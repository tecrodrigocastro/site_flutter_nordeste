/// Um dos nove estados do Nordeste.
///
/// [variante] é a classe CSS extra que define a cor do bloco (`uf--sol`,
/// `uf--ciano` ou vazio para o azul-céu).
class Estado {
  const Estado(this.sigla, this.nome, this.variante);

  final String sigla;
  final String nome;
  final String variante;
}

const estados = [
  Estado('AL', 'Alagoas', 'uf--sol'),
  Estado('BA', 'Bahia', 'uf--ciano'),
  Estado('CE', 'Ceará', ''),
  Estado('MA', 'Maranhão', 'uf--sol'),
  Estado('PB', 'Paraíba', 'uf--ciano'),
  Estado('PE', 'Pernambuco', ''),
  Estado('PI', 'Piauí', 'uf--sol'),
  Estado('RN', 'Rio Grande do Norte', 'uf--ciano'),
  Estado('SE', 'Sergipe', ''),
];
