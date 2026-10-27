/// Um dos nove estados do Nordeste.
///
/// [variant] é a classe CSS extra que define a cor do bloco (`state--sun`,
/// `state--cyan` ou vazio para o azul-céu).
class BrazilianState {
  const BrazilianState(this.abbreviation, this.name, this.variant);

  final String abbreviation;
  final String name;
  final String variant;
}

const states = [
  BrazilianState('AL', 'Alagoas', 'state--sun'),
  BrazilianState('BA', 'Bahia', 'state--cyan'),
  BrazilianState('CE', 'Ceará', ''),
  BrazilianState('MA', 'Maranhão', 'state--sun'),
  BrazilianState('PB', 'Paraíba', 'state--cyan'),
  BrazilianState('PE', 'Pernambuco', ''),
  BrazilianState('PI', 'Piauí', 'state--sun'),
  BrazilianState('RN', 'Rio Grande do Norte', 'state--cyan'),
  BrazilianState('SE', 'Sergipe', ''),
];
