import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Sextilha de boas-vindas no estilo folheto de cordel.
class Pamphlet extends StatelessComponent {
  const Pamphlet({super.key});

  static const _verses = [
    'Do Piauí a Sergipe',
    'tem dev pra todo lugar,',
    'com um widget na mão',
    'e vontade de ensinar.',
    'Chega junto, nordestino,',
    'que aqui tem espaço pra ficar.',
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'pamphlet', classes: 'pamphlet', [
      div(classes: 'container pamphlet__inner', [
        div(classes: 'pamphlet__photo', [
          img(
            src: '/images/mascot-hat.png',
            alt: 'O mascote da comunidade usando um chapéu de cangaceiro de couro com estrela de oito pontas',
            classes: 'pamphlet__img',
          ),
        ]),
        div(classes: 'pamphlet__content', [
          p(classes: 'pamphlet__label', [.text('Folheto nº 1 · Sextilha de boas-vindas')]),
          div(classes: 'pamphlet__paper', [
            for (final verse in _verses) span(classes: 'verse', [.text(verse)]),
          ]),
          p(classes: 'pamphlet__text', [
            .text(
              'A Flutter Nordeste é uma casa em comum para quem desenvolve com Flutter na nossa região: '
              'quem está começando, quem já entrega app em produção e quem quer subir num palco pela primeira vez.',
            ),
          ]),
        ]),
      ]),
    ]);
  }
}
