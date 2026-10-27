/// Um encontro da comunidade, exibido como "ticket".
class Meetup {
  const Meetup({
    required this.day,
    required this.month,
    required this.name,
    required this.info,
  });

  final String day;
  final String month;
  final String name;

  /// Cidade, local e horário numa linha só.
  final String info;
}

/// Lista de encontros exibida na home e em /encontros.
///
/// TODO: trocar os campos entre [colchetes] pelos encontros confirmados.
/// Lista vazia mostra a mensagem "Em breve".
const meetups = [
  Meetup(
    day: '[DIA]',
    month: '[MÊS]',
    name: '[NOME DO ENCONTRO]',
    info: '[CIDADE, ESTADO] · [LOCAL] · [HORÁRIO]',
  ),
  Meetup(
    day: '[DIA]',
    month: '[MÊS]',
    name: '[NOME DO ENCONTRO]',
    info: '[CIDADE, ESTADO] · [LOCAL] · [HORÁRIO]',
  ),
];
