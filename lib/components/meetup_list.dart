import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/meetups.dart';

/// Encontros como tickets com picote. Use [limit] para mostrar só os primeiros.
class MeetupList extends StatelessComponent {
  const MeetupList({this.limit, super.key});

  final int? limit;

  @override
  Component build(BuildContext context) {
    final list = limit == null ? meetups : meetups.take(limit!).toList();

    if (list.isEmpty) {
      return p(classes: 'meetups__empty', [
        .text('Em breve: os próximos encontros aparecem aqui. Siga a comunidade no Instagram para saber primeiro.'),
      ]);
    }

    return ul(classes: 'meetups__list', [
      for (var i = 0; i < list.length; i++)
        li(classes: 'ticket', [
          div(classes: i.isOdd ? 'ticket__date ticket__date--cyan' : 'ticket__date', [
            div(classes: 'ticket__day', [.text(list[i].day)]),
            div(classes: 'ticket__month', [.text(list[i].month)]),
          ]),
          div(classes: 'ticket__body', [
            div(classes: 'ticket__text', [
              h3(classes: 'ticket__title', [.text(list[i].name)]),
              p(classes: 'ticket__info', [.text(list[i].info)]),
            ]),
            a(href: '#join', classes: 'btn btn--petrol btn--small', [.text('Quero ir')]),
          ]),
        ]),
    ]);
  }
}
