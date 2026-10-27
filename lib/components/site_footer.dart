import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SiteFooter extends StatelessComponent {
  const SiteFooter({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'container site-footer__inner', [
        div(classes: 'site-footer__brand', [.text('Flutter Nordeste')]),
        p(classes: 'site-footer__text', [
          .text('Comunidade independente de desenvolvedores Flutter do Nordeste do Brasil.'),
        ]),
      ]),
    ]);
  }
}
