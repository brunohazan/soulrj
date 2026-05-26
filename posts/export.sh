#!/usr/bin/env bash
# export.sh — gera PNGs 1080×1350 de cada post e salva no Desktop

set -e

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
POSTS_DIR="$(cd "$(dirname "$0")" && pwd)"
DESKTOP="$HOME/Desktop"

posts=(post-01 post-02 post-03 post-04)

for post in "${posts[@]}"; do
  src="$POSTS_DIR/${post}.html"
  tmp="$POSTS_DIR/${post}-export-tmp.html"
  out="$DESKTOP/soulrj-${post}.png"

  echo "→ Processando $post..."

  # Copia o HTML e injeta CSS de override antes de </body>
  python3 - "$src" "$tmp" <<'PYEOF'
import sys

override = """
<style id="export-override">
body {
  background: #0A0A0B !important;
  margin: 0 !important;
  padding: 0 !important;
  min-height: 0 !important;
  display: block !important;
  width: 1080px !important;
  height: 1350px !important;
  overflow: hidden !important;
  gap: 0 !important;
}
.frame {
  width: 1080px !important;
  height: 1350px !important;
  border-radius: 0 !important;
  box-shadow: none !important;
  overflow: hidden !important;
  flex-shrink: unset !important;
}
.post { transform: none !important; }
p { display: none !important; }
</style>
"""

src, dst = sys.argv[1], sys.argv[2]
html = open(src, encoding='utf-8').read()
html = html.replace('</body>', override + '\n</body>', 1)
open(dst, 'w', encoding='utf-8').write(html)
PYEOF

  # Screenshot com Chrome headless
  "$CHROME" \
    --headless=new \
    --screenshot="$out" \
    --window-size=1080,1350 \
    --hide-scrollbars \
    --no-sandbox \
    --allow-file-access-from-files \
    --disable-web-security \
    --virtual-time-budget=5000 \
    "file://$tmp"

  rm "$tmp"
  echo "   ✓ Salvo em $out"
done

echo ""
echo "✅ Concluído — ${#posts[@]} posts exportados para o Desktop."
