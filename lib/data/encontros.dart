/// Um encontro da comunidade, exibido como "ingresso".
class Encontro {
  const Encontro({
    required this.dia,
    required this.mes,
    required this.nome,
    required this.info,
  });

  final String dia;
  final String mes;
  final String nome;

  /// Cidade, local e horário numa linha só.
  final String info;
}

/// Lista de encontros exibida na home e em /encontros.
///
/// TODO: trocar os campos entre [colchetes] pelos encontros confirmados.
/// Lista vazia mostra a mensagem "Em breve".
const encontros = [
  Encontro(
    dia: '[DIA]',
    mes: '[MÊS]',
    nome: '[NOME DO ENCONTRO]',
    info: '[CIDADE, ESTADO] · [LOCAL] · [HORÁRIO]',
  ),
  Encontro(
    dia: '[DIA]',
    mes: '[MÊS]',
    nome: '[NOME DO ENCONTRO]',
    info: '[CIDADE, ESTADO] · [LOCAL] · [HORÁRIO]',
  ),
];
