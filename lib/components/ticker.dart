import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Tira escura com palavras correndo. É decorativa, então fica oculta
/// para leitores de tela.
class Ticker extends StatelessComponent {
  const Ticker({super.key});

  static const _words = ['Flutter', 'Nordeste', 'Dart', 'Widgets', 'Meetups', 'Comunidade'];

  @override
  Component build(BuildContext context) {
    return div(classes: 'ticker', attributes: {'aria-hidden': 'true'}, [
      div(classes: 'ticker__track', [
        // 4 repetições: as duas metades ficam idênticas para o loop sem emenda.
        for (var i = 0; i < 4; i++)
          for (final word in _words)
            div(classes: 'ticker__item', [
              span(classes: 'ticker__text', [.text(word)]),
              img(src: '/images/star.svg', alt: '', classes: 'ticker__star'),
            ]),
      ]),
    ]);
  }
}
