import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Abertura da home: título gigante, mascote e sol girando.
class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'top', classes: 'hero', [
      div(classes: 'container hero__inner', [
        div(classes: 'hero__text', [
          p(classes: 'badge', [.text('Comunidade de Flutter · Nordeste do Brasil')]),
          h1(classes: 'hero__title', [
            span(classes: 'hero__flutter', [.text('Flutter')]),
            span(classes: 'hero__nordeste', [.text('Nordeste')]),
          ]),
          p(classes: 'hero__lead', [
            .text(
              'Vamos fomentar e disseminar a palavra do Flutter no nosso nordeste. '
              'Dev de todo canto, trocando ideia e construindo app junto.',
            ),
          ]),
          div(classes: 'hero__actions', [
            a(href: '#join', classes: 'btn btn--petrol', [.text('Quero fazer parte')]),
            a(href: '/encontros', classes: 'btn btn--white', [.text('Próximos encontros')]),
          ]),
        ]),
        div(classes: 'hero__art', [
          img(src: '/images/sun.svg', alt: '', classes: 'hero__sun'),
          div(classes: 'hero__frame', [
            img(
              src: '/images/mascot-bandana.png',
              alt: 'Mascote da Flutter Nordeste, um passarinho azul com bandana de estrelas, entre cactos no sertão',
              classes: 'hero__img',
            ),
            div(classes: 'hero__stamp', [.text('Aberta pra todo dev')]),
          ]),
        ]),
      ]),
    ]);
  }
}
