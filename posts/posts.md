# Soul RJ — Sistema Visual do Feed Instagram

## Direção de Arte

Feed premium, editorial, com ritmo visual em diagonal (3 colunas).
Estética: dark luxury tech meets hospitality. Sem fotos stock — só imóveis reais ou tipografia pura.

---

## 3 Tipos de Post

### 1. Foto (t-foto)
- **Fundo:** #0A0A0B (quase preto)
- **Foto:** imóvel real, full-bleed, com overlays de gradiente (topo + base)
- **Overlay topo:** gradiente para baixo, opacidade ~64% → transparente
- **Overlay base:** gradiente para cima, preto sólido → transparente (780px de altura)
- **Glow:** radial colorido sutil no canto inferior (terracotta ou azul/verde conforme imóvel)
- **Conteúdo:** nome do imóvel, stats (quartos, camas, ocupação, reviews)
- **Pill logo:** fundo glass escuro, backdrop-blur 20px, borda rgba branca 9%
- **Rating pill:** mesmo estilo glass, com estrela terracotta
- **Cor accent:** #D6FF3D (lime neon) para ocupação e tag operacional
- **Tag operacional:** `// 01 · copacabana · ativo` com pulse dot lime

### 2. Dark (t-dark)
- **Fundo:** #0A0A0B
- **Dot grid:** pontos brancos 4.5% opacidade, 32px spacing, mask radial 80%
- **Glow:** radial lime (#D6FF3D) 5.5% opacidade, centralizado
- **Corners:** 48px, borda branca 18% opacidade
- **Tipografia headline:** 96px, Geist, letter-spacing -0.048em, line-height 1.1
  - Linha muted: peso 400, cor 18% opacidade
  - Linha bold: peso 600, cor #f4efe4
  - Accent em bold: #D6FF3D (lime)
- **Body copy:** 52px, peso 300, cor 55% opacidade; accent peso 500 lime
- **Rule:** 1px branco 9%
- **Tag categoria:** Geist Mono 12px, uppercase, fundo terracotta 15%, borda terracotta 35%
- **Bottom bar:** op-tag com pulse dot terracotta + rating Airbnb

### 3. Pastel (t-pastel)
- **Fundo:** #EDE8DF (creme quente)
- **Dot grid:** pontos escuros 8% opacidade, 32px spacing, mask radial 90%
- **Glow:** radial terracotta 7% opacidade, deslocado esquerda
- **Corners:** 48px, borda #A8C96A (lime pastel)
- **Tipografia headline:** mesma estrutura do dark
  - Linha muted: cor escura 18% opacidade
  - Linha bold: cor #18150F (quase preto quente)
  - Accent em bold: #b15a3c (terracotta)
- **Body copy:** mesma estrutura, cor escura 45%; accent terracotta
- **Pill logo:** fundo creme 70%, backdrop-blur 12px, borda lime 60%
- **Tag categoria:** fundo lime 14%, borda lime 35%
- **Bottom bar:** op-dot sólido terracotta (sem pulse) + rating

---

## Paleta de Cores

| Token | Hex | Uso |
|-------|-----|-----|
| dark-bg | #0A0A0B | Fundo posts dark e foto |
| pastel-bg | #EDE8DF | Fundo posts pastel |
| text-light | #f4efe4 | Texto principal (dark) |
| text-dark | #18150F | Texto principal (pastel) |
| terracotta | #b15a3c | Accent quente, estrelas, dots |
| terracotta-2 | #d4764e | Gradiente stripe |
| lime | #D6FF3D | Accent frio (dark), ocupação |
| lime-pastel | #A8C96A | Corners e pills (pastel) |

---

## Tipografia

| Elemento | Font | Peso | Tamanho | Tracking |
|----------|------|------|---------|----------|
| Logo "soul" | Plus Jakarta Sans | 300 | 26px | -0.04em |
| Logo "rj" | Plus Jakarta Sans | 600 | 26px | -0.04em |
| Headline muted | Geist | 400 | 96px | -0.048em |
| Headline bold | Geist | 600 | 96px | -0.048em |
| Body copy | Geist | 300 | 52px | -0.03em |
| Body accent | Geist | 500 | 52px | -0.03em |
| Tags/labels | Geist Mono | 400 | 12-13px | 0.08-0.09em |
| Stats value | Geist | 500 | 42px | -0.035em |
| Stats key | Geist Mono | 400 | 11px | 0.11em |
| Prop name | Geist | 500 | 84px | -0.045em |
| Prop subtitle | Geist | 300 italic | 76px | -0.045em |

---

## Elementos Compartilhados

- **Stripe:** 4px topo, gradiente terracotta → terracotta-2 → transparente
- **Grain:** SVG fractalNoise, baseFrequency 0.72, 4 octaves
  - Dark: overlay, 6.5% opacidade
  - Pastel: multiply, 4.5% opacidade
  - Foto: overlay, 7% opacidade
- **Canvas:** 1080 × 1350px (4:5 portrait, ideal IG)

---

## Ritmo do Feed (diagonal 3×3)

```
Linha 1:  FOTO    DARK    PASTEL
Linha 2:  PASTEL  FOTO    DARK
Linha 3:  DARK    PASTEL  FOTO
```

Padrão diagonal — cada tipo aparece 1× por linha, nunca repete na mesma coluna consecutiva.

---

## Posts Criados (Leva 1)

| # | Tipo | Headline | Tag |
|---|------|----------|-----|
| 01 | foto | 100m da praia / sofisticado e silencioso | copacabana |
| 02 | dark | Gestoras comuns padronizam. / A Soul RJ personaliza. | diferencial |
| 03 | pastel | Gestoras comuns padronizam. / A Soul RJ personaliza. | diferencial |
| 04 | pastel | Gestoras comuns padronizam. / A Soul RJ personaliza. | diferencial |
| 05 | foto | 150m da praia · 142m² / Copacabana 4 hóspedes | copacabana |
| 06 | dark | Gestoras comuns padronizam. / A Soul RJ personaliza. | diferencial |
| 07 | dark | Gestoras comuns padronizam. / A Soul RJ personaliza. | diferencial |
| 08 | pastel | Gestoras comuns padronizam. / A Soul RJ personaliza. | diferencial |
| 09 | dark | Não é promessa. / É método. | resultado |
| 10 | pastel | Imóvel parado o ano todo. / Ou 95% ocupado. | resultado |

---

## Próximos Tipos a Criar

- **Foto com texto** — foto + headline overlay (carrossel ou single)
- **Claro (light)** — variação do pastel com fundo mais branco
- **Foto pura** — sem stats, só imóvel hero (para variar ritmo)
