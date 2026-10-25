import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/chamada.dart';
import '../components/lista_encontros.dart';

/// /encontros — todos os encontros da comunidade.
class Encontros extends StatelessComponent {
  const Encontros({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'encontros', [
        div(classes: 'container container--estreito encontros__inner', [
          h1(classes: 'titulo-secao titulo-secao--petroleo', [.text('Encontros')]),
          p(classes: 'lead', [
            .text('Meetups pelo Nordeste para trocar ideia, aprender Flutter e conhecer gente da área.'),
          ]),
          const ListaEncontros(),
        ]),
      ]),
      const Chamada(),
    ]);
  }
}
