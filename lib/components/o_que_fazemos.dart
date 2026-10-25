import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Três frentes de atuação da comunidade, em cards numerados.
class OQueFazemos extends StatelessComponent {
  const OQueFazemos({super.key});

  static const _cards = [
    (
      numero: '01',
      variante: 'card--branco',
      titulo: 'Encontros presenciais',
      texto: 'Meetups nas capitais e no interior, com palestra, networking e o papo descontraído de depois.',
    ),
    (
      numero: '02',
      variante: 'card--ciano',
      titulo: 'Conversa o ano todo',
      texto: 'Um canto para tirar dúvida, pedir code review, divulgar vaga e mostrar o que você está construindo.',
    ),
    (
      numero: '03',
      variante: 'card--sol',
      titulo: 'Palco pra novas vozes',
      texto: 'Primeira palestra? A gente ajuda a montar o tema e entrega o microfone. '
          'Quem é de casa merece ser ouvido.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'fazemos', classes: 'faz', [
      div(classes: 'container faz__inner', [
        h2(classes: 'titulo-secao titulo-secao--tinta', [.text('O que a gente faz')]),
        div(classes: 'faz__grade', [
          for (final card in _cards)
            article(classes: 'card ${card.variante}', [
              div(classes: 'card__num', attributes: {'aria-hidden': 'true'}, [.text(card.numero)]),
              h3(classes: 'card__titulo', [.text(card.titulo)]),
              p(classes: 'card__texto', [.text(card.texto)]),
            ]),
        ]),
      ]),
    ]);
  }
}
