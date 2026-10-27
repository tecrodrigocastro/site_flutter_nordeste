import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../components/call_to_action.dart';
import '../components/meetup_list.dart';
import '../components/pamphlet.dart';
import '../components/states_grid.dart';
import '../components/ticker.dart';
import '../components/hero.dart';
import '../components/what_we_do.dart';

/// Página inicial. Não usa @client: é HTML estático, sem JavaScript.
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const Hero(),
      const Ticker(),
      const Pamphlet(),
      const WhatWeDo(),
      const StatesGrid(),
      section(id: 'events', classes: 'meetups', [
        div(classes: 'container container--narrow meetups__inner', [
          h2(classes: 'section-title section-title--petrol', [.text('Próximos encontros')]),
          p(classes: 'lead', [.text('Cada encontro vira um ticket aqui.')]),
          const MeetupList(limit: 2),
          div(classes: 'meetups__more', [
            Link(to: '/encontros', child: .text('Ver todos os encontros')),
          ]),
        ]),
      ]),
      const CallToAction(),
    ]);
  }
}
