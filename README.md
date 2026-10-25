# Flutter Nordeste

Site da comunidade Flutter Nordeste, feito com [Jaspr](https://docs.jaspr.site) em modo **static**
(cada página é pré-renderizada em HTML, sem JavaScript).

## Rodando

```shell
dart pub global activate jaspr_cli
jaspr serve
```

O servidor de desenvolvimento sobe em `http://localhost:8080`.

## Build

```shell
jaspr build
```

A saída fica em `build/jaspr/` e pode ser hospedada em qualquer serviço de site estático
(Cloudflare Pages, Netlify, GitHub Pages...). Os caminhos de imagem e CSS são absolutos (`/styles.css`,
`/images/...`), então o site deve ficar na raiz do domínio.

## Estrutura

| Pasta | O que tem |
| --- | --- |
| `lib/pages/` | Páginas: `home.dart`, `sobre.dart`, `encontros.dart` |
| `lib/components/` | Seções reutilizáveis (hero, faixa, folheto, estados, ingressos...) |
| `lib/data/` | Conteúdo editável: `encontros.dart`, `estados.dart`, `links.dart` |
| `lib/app.dart` | Rotas e layout (cabeçalho, páginas, rodapé) |
| `web/styles.css` | Todo o CSS e as variáveis de cor do tema |
| `web/images/` | Mascote, sol, bandeirolas e demais ilustrações |

## Para preencher

- `lib/data/encontros.dart`: datas, cidades e nomes dos encontros (hoje são campos `[ENTRE COLCHETES]`).
- `lib/main.server.dart`: `og:image` e `og:url`, quando o domínio existir.
- `web/favicon.ico`: ainda é o do template do Jaspr.
