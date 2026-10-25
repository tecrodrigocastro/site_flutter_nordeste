import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/chamada.dart';
import '../components/estados_grade.dart';
import '../components/folheto.dart';
import '../components/o_que_fazemos.dart';

/// /sobre — quem somos e o que fazemos.
class Sobre extends StatelessComponent {
  const Sobre({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'pagina-titulo', [
        div(classes: 'container pagina-titulo__inner', [
          h1(classes: 'titulo-secao titulo-secao--petroleo', [.text('Sobre a comunidade')]),
          p(classes: 'lead', [
            .text('Vamos fomentar e disseminar a palavra do Flutter no nosso nordeste.'),
          ]),
        ]),
      ]),
      const Folheto(),
      const OQueFazemos(),
      const EstadosGrade(),
      const Chamada(),
    ]);
  }
}
