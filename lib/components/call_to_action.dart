import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/links.dart';

/// Bloco laranja final: "Chega mais, cabra!" com os links da comunidade.
class CallToAction extends StatelessComponent {
  const CallToAction({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'join', classes: 'cta', [
      div(classes: 'cta__teeth', attributes: {'aria-hidden': 'true'}, []),
      div(classes: 'container container--narrow cta__inner', [
        h2(classes: 'cta__title', [
          span([.text('Chega mais,')]),
          span([.text('cabra!')]),
        ]),
        p(classes: 'cta__text', [
          .text('Siga a comunidade, entre no grupo e fique por dentro de cada encontro.'),
        ]),
        div(classes: 'cta__actions', [
          a(href: linkInstagram, classes: 'btn btn--ink', [
            img(src: '/images/instagram.svg', alt: '', classes: 'btn__icon'),
            .text('@flutternordeste'),
          ]),
          a(href: linkWhatsappGroup, classes: 'btn btn--white', [.text(whatsappGroupLabel)]),
        ]),
      ]),
    ]);
  }
}
