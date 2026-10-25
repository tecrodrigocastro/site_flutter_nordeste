import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

/// Bandeirolas de festa junina + barra de navegação.
class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  static const _links = [
    (rotulo: 'Home', caminho: '/'),
    (rotulo: 'Sobre', caminho: '/sobre'),
    (rotulo: 'Encontros', caminho: '/encontros'),
  ];

  @override
  Component build(BuildContext context) {
    final caminhoAtivo = context.url;

    return div([
      div(classes: 'bandeirolas', attributes: {'aria-hidden': 'true'}, []),
      header(classes: 'site-header', [
        div(classes: 'container site-header__inner', [
          div(classes: 'logo', [
            Link(to: '/', child: .text('Flutter Nordeste')),
          ]),
          nav(classes: 'nav', attributes: {'aria-label': 'Principal'}, [
            for (final link in _links)
              div(classes: caminhoAtivo == link.caminho ? 'nav__item nav__item--ativo' : 'nav__item', [
                Link(to: link.caminho, child: .text(link.rotulo)),
              ]),
            a(href: '#participar', classes: 'btn btn--sol btn--pequeno', [.text('Entrar')]),
          ]),
        ]),
      ]),
    ]);
  }
}
