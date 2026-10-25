import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/links.dart';

/// Bloco laranja final: "Chega mais, cabra!" com os links da comunidade.
class Chamada extends StatelessComponent {
  const Chamada({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'participar', classes: 'chamada', [
      div(classes: 'chamada__dentes', attributes: {'aria-hidden': 'true'}, []),
      div(classes: 'container container--estreito chamada__inner', [
        h2(classes: 'chamada__titulo', [
          span([.text('Chega mais,')]),
          span([.text('cabra!')]),
        ]),
        p(classes: 'chamada__texto', [
          .text('Siga a comunidade, entre no grupo e fique por dentro de cada encontro.'),
        ]),
        div(classes: 'chamada__acoes', [
          a(href: linkInstagram, classes: 'btn btn--tinta', [
            img(src: '/images/instagram.svg', alt: '', classes: 'btn__icone'),
            .text('@flutternordeste'),
          ]),
          a(href: linkGrupo, classes: 'btn btn--branco', [.text(rotuloGrupo)]),
        ]),
      ]),
    ]);
  }
}
