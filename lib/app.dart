import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/site_footer.dart';
import 'components/site_header.dart';
import 'pages/encontros.dart';
import 'pages/home.dart';
import 'pages/sobre.dart';

/// Componente raiz. Com roteamento multi-page, ele só é construído no servidor
/// durante o pré-render: cada rota vira um arquivo .html estático.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'main', [
      const SiteHeader(),
      Router(
        routes: [
          Route(path: '/', title: 'Flutter Nordeste', builder: (context, state) => const Home()),
          Route(path: '/sobre', title: 'Sobre · Flutter Nordeste', builder: (context, state) => const Sobre()),
          Route(
            path: '/encontros',
            title: 'Encontros · Flutter Nordeste',
            builder: (context, state) => const Encontros(),
          ),
        ],
      ),
      const SiteFooter(),
    ]);
  }
}
