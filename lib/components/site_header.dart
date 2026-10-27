import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

/// Bandeirolas de festa junina + barra de navegação.
class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  static const _links = [
    (label: 'Home', path: '/'),
    (label: 'Sobre', path: '/sobre'),
    (label: 'Encontros', path: '/encontros'),
  ];

  @override
  Component build(BuildContext context) {
    final activePath = context.url;

    return div([
      div(classes: 'bunting', attributes: {'aria-hidden': 'true'}, []),
      header(classes: 'site-header', [
        div(classes: 'container site-header__inner', [
          div(classes: 'logo', [
            Link(to: '/', child: .text('Flutter Nordeste')),
          ]),
          nav(classes: 'nav', attributes: {'aria-label': 'Principal'}, [
            for (final link in _links)
              div(classes: activePath == link.path ? 'nav__item nav__item--active' : 'nav__item', [
                Link(to: link.path, child: .text(link.label)),
              ]),
            a(href: '#join', classes: 'btn btn--sun btn--small', [.text('Entrar')]),
          ]),
        ]),
      ]),
    ]);
  }
}
