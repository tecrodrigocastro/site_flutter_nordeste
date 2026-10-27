import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/call_to_action.dart';
import '../components/meetup_list.dart';

/// /encontros — todos os encontros da comunidade.
class Meetups extends StatelessComponent {
  const Meetups({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'meetups', [
        div(classes: 'container container--narrow meetups__inner', [
          h1(classes: 'section-title section-title--petrol', [.text('Encontros')]),
          p(classes: 'lead', [
            .text('Meetups pelo Nordeste para trocar ideia, aprender Flutter e conhecer gente da área.'),
          ]),
          const MeetupList(),
        ]),
      ]),
      const CallToAction(),
    ]);
  }
}
