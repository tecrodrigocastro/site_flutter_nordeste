/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

// Server-specific Jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

const _descricao = 'Flutter Nordeste: comunidade de desenvolvedores Flutter do Nordeste do Brasil. '
    'Encontros, troca de conhecimento e palco para novas vozes.';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    title: 'Flutter Nordeste',
    lang: 'pt-BR',
    meta: {
      'description': _descricao,
      'theme-color': '#0A2E4A',
    },
    head: [
      // Todo o visual do site vive em web/styles.css.
      Component.element(tag: 'link', attributes: {'rel': 'stylesheet', 'href': '/styles.css'}),
      // Open Graph: prévia do link no WhatsApp, Instagram e redes.
      // TODO: adicionar og:image e og:url com a URL absoluta quando o domínio existir.
      Component.element(tag: 'meta', attributes: {'property': 'og:type', 'content': 'website'}),
      Component.element(tag: 'meta', attributes: {'property': 'og:locale', 'content': 'pt_BR'}),
      Component.element(tag: 'meta', attributes: {'property': 'og:site_name', 'content': 'Flutter Nordeste'}),
      Component.element(tag: 'meta', attributes: {'property': 'og:title', 'content': 'Flutter Nordeste'}),
      Component.element(tag: 'meta', attributes: {'property': 'og:description', 'content': _descricao}),
    ],
    body: App(),
  ));
}
