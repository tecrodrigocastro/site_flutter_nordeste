import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/call_to_action.dart';
import '../components/states_grid.dart';
import '../components/pamphlet.dart';
import '../components/what_we_do.dart';

/// /sobre — quem somos e o que fazemos.
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'page-title', [
        div(classes: 'container page-title__inner', [
          h1(classes: 'section-title section-title--petrol', [.text('Sobre a comunidade')]),
          p(classes: 'lead', [
            .text('Vamos fomentar e disseminar a palavra do Flutter no nosso nordeste.'),
          ]),
        ]),
      ]),
      const Pamphlet(),
      const WhatWeDo(),
      const StatesGrid(),
      const CallToAction(),
    ]);
  }
}
