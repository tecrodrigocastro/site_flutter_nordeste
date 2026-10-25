import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../components/chamada.dart';
import '../components/estados_grade.dart';
import '../components/faixa.dart';
import '../components/folheto.dart';
import '../components/hero.dart';
import '../components/lista_encontros.dart';
import '../components/o_que_fazemos.dart';

/// Página inicial. Não usa @client: é HTML estático, sem JavaScript.
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const Hero(),
      const Faixa(),
      const Folheto(),
      const OQueFazemos(),
      const EstadosGrade(),
      section(id: 'eventos', classes: 'encontros', [
        div(classes: 'container container--estreito encontros__inner', [
          h2(classes: 'titulo-secao titulo-secao--petroleo', [.text('Próximos encontros')]),
          p(classes: 'lead', [.text('Cada encontro vira um ingresso aqui.')]),
          const ListaEncontros(limite: 2),
          div(classes: 'encontros__mais', [
            Link(to: '/encontros', child: .text('Ver todos os encontros')),
          ]),
        ]),
      ]),
      const Chamada(),
    ]);
  }
}
