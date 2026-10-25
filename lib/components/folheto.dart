import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Sextilha de boas-vindas no estilo folheto de cordel.
class Folheto extends StatelessComponent {
  const Folheto({super.key});

  static const _versos = [
    'Do Piauí a Sergipe',
    'tem dev pra todo lugar,',
    'com um widget na mão',
    'e vontade de ensinar.',
    'Chega junto, nordestino,',
    'que aqui tem espaço pra ficar.',
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'folheto', classes: 'folheto', [
      div(classes: 'container folheto__inner', [
        div(classes: 'folheto__foto', [
          img(
            src: '/images/mascote-chapeu.png',
            alt: 'O mascote da comunidade usando um chapéu de cangaceiro de couro com estrela de oito pontas',
            classes: 'folheto__img',
          ),
        ]),
        div(classes: 'folheto__conteudo', [
          p(classes: 'folheto__rotulo', [.text('Folheto nº 1 · Sextilha de boas-vindas')]),
          div(classes: 'folheto__papel', [
            for (final verso in _versos) span(classes: 'verso', [.text(verso)]),
          ]),
          p(classes: 'folheto__texto', [
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
