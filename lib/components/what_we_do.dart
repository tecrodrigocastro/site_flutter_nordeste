import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Três frentes de atuação da comunidade, em cards numerados.
class WhatWeDo extends StatelessComponent {
  const WhatWeDo({super.key});

  static const _cards = [
    (
      number: '01',
      variant: 'card--white',
      title: 'Encontros presenciais',
      text: 'Meetups nas capitais e no interior, com palestra, networking e o papo descontraído de depois.',
    ),
    (
      number: '02',
      variant: 'card--cyan',
      title: 'Conversa o ano todo',
      text: 'Um canto para tirar dúvida, pedir code review, divulgar vaga e mostrar o que você está construindo.',
    ),
    (
      number: '03',
      variant: 'card--sun',
      title: 'Palco pra novas vozes',
      text: 'Primeira palestra? A gente ajuda a montar o tema e entrega o microfone. '
          'Quem é de casa merece ser ouvido.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'what-we-do', classes: 'what-we-do', [
      div(classes: 'container what-we-do__inner', [
        h2(classes: 'section-title section-title--ink', [.text('O que a gente faz')]),
        div(classes: 'what-we-do__grid', [
          for (final card in _cards)
            article(classes: 'card ${card.variant}', [
              div(classes: 'card__number', attributes: {'aria-hidden': 'true'}, [.text(card.number)]),
              h3(classes: 'card__title', [.text(card.title)]),
              p(classes: 'card__text', [.text(card.text)]),
            ]),
        ]),
      ]),
    ]);
  }
}
