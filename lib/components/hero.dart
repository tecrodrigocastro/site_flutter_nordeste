import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Abertura da home: título gigante, mascote e sol girando.
class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'topo', classes: 'hero', [
      div(classes: 'container hero__inner', [
        div(classes: 'hero__texto', [
          p(classes: 'selo', [.text('Comunidade de Flutter · Nordeste do Brasil')]),
          h1(classes: 'hero__titulo', [
            span(classes: 'hero__flutter', [.text('Flutter')]),
            span(classes: 'hero__nordeste', [.text('Nordeste')]),
          ]),
          p(classes: 'hero__lead', [
            .text(
              'Vamos fomentar e disseminar a palavra do Flutter no nosso nordeste. '
              'Dev de todo canto, trocando ideia e construindo app junto.',
            ),
          ]),
          div(classes: 'hero__acoes', [
            a(href: '#participar', classes: 'btn btn--petroleo', [.text('Quero fazer parte')]),
            a(href: '/encontros', classes: 'btn btn--branco', [.text('Próximos encontros')]),
          ]),
        ]),
        div(classes: 'hero__arte', [
          img(src: '/images/sol.svg', alt: '', classes: 'hero__sol'),
          div(classes: 'hero__moldura', [
            img(
              src: '/images/mascote-bandana.png',
              alt: 'Mascote da Flutter Nordeste, um passarinho azul com bandana de estrelas, entre cactos no sertão',
              classes: 'hero__img',
            ),
            div(classes: 'hero__carimbo', [.text('Aberta pra todo dev')]),
          ]),
        ]),
      ]),
    ]);
  }
}
