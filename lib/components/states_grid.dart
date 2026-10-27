import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/states.dart';

/// Os nove estados em blocos com a sigla gigante.
class StatesGrid extends StatelessComponent {
  const StatesGrid({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'states', classes: 'states', [
      div(classes: 'container states__inner', [
        h2(classes: 'section-title section-title--sun', [
          span([.text('Nove estados,')]),
          span([.text('uma comunidade')]),
        ]),
        p(classes: 'lead', [.text('Do litoral ao sertão. Se você é do Nordeste, tem lugar pra você aqui.')]),
        ul(classes: 'states__grid', [
          for (final state in states)
            li(classes: 'state ${state.variant}', [
              span(classes: 'state__abbr', attributes: {'aria-hidden': 'true'}, [.text(state.abbreviation)]),
              span(classes: 'state__name', [.text(state.name)]),
            ]),
        ]),
      ]),
    ]);
  }
}
