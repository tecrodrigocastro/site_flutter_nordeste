import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Tira escura com palavras correndo. É decorativa, então fica oculta
/// para leitores de tela.
class Faixa extends StatelessComponent {
  const Faixa({super.key});

  static const _palavras = ['Flutter', 'Nordeste', 'Dart', 'Widgets', 'Meetups', 'Comunidade'];

  @override
  Component build(BuildContext context) {
    return div(classes: 'faixa', attributes: {'aria-hidden': 'true'}, [
      div(classes: 'faixa__trilho', [
        // 4 repetições: as duas metades ficam idênticas para o loop sem emenda.
        for (var i = 0; i < 4; i++)
          for (final palavra in _palavras)
            div(classes: 'faixa__item', [
              span(classes: 'faixa__texto', [.text(palavra)]),
              img(src: '/images/estrela.svg', alt: '', classes: 'faixa__estrela'),
            ]),
      ]),
    ]);
  }
}
