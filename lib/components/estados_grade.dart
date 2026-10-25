import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/estados.dart';

/// Os nove estados em blocos com a sigla gigante.
class EstadosGrade extends StatelessComponent {
  const EstadosGrade({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'estados', classes: 'estados', [
      div(classes: 'container estados__inner', [
        h2(classes: 'titulo-secao titulo-secao--sol', [
          span([.text('Nove estados,')]),
          span([.text('uma comunidade')]),
        ]),
        p(classes: 'lead', [.text('Do litoral ao sertão. Se você é do Nordeste, tem lugar pra você aqui.')]),
        ul(classes: 'estados__grade', [
          for (final estado in estados)
            li(classes: 'uf ${estado.variante}', [
              span(classes: 'uf__sigla', attributes: {'aria-hidden': 'true'}, [.text(estado.sigla)]),
              span(classes: 'uf__nome', [.text(estado.nome)]),
            ]),
        ]),
      ]),
    ]);
  }
}
