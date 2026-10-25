import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/encontros.dart';

/// Encontros como ingressos com picote. Use [limite] para mostrar só os primeiros.
class ListaEncontros extends StatelessComponent {
  const ListaEncontros({this.limite, super.key});

  final int? limite;

  @override
  Component build(BuildContext context) {
    final lista = limite == null ? encontros : encontros.take(limite!).toList();

    if (lista.isEmpty) {
      return p(classes: 'encontros__vazio', [
        .text('Em breve: os próximos encontros aparecem aqui. Siga a comunidade no Instagram para saber primeiro.'),
      ]);
    }

    return ul(classes: 'encontros__lista', [
      for (var i = 0; i < lista.length; i++)
        li(classes: 'ingresso', [
          div(classes: i.isOdd ? 'ingresso__data ingresso__data--ciano' : 'ingresso__data', [
            div(classes: 'ingresso__dia', [.text(lista[i].dia)]),
            div(classes: 'ingresso__mes', [.text(lista[i].mes)]),
          ]),
          div(classes: 'ingresso__corpo', [
            div(classes: 'ingresso__texto', [
              h3(classes: 'ingresso__titulo', [.text(lista[i].nome)]),
              p(classes: 'ingresso__info', [.text(lista[i].info)]),
            ]),
            a(href: '#participar', classes: 'btn btn--petroleo btn--pequeno', [.text('Quero ir')]),
          ]),
        ]),
    ]);
  }
}
