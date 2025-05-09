import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/widgets/links/views/links_desktop.dart';
import 'package:real_state/widgets/links/views/links_mobile.dart';

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const LinksMobile(),
      tablet: (context) => const LinksDesktop(),
      desktop: (context) => const LinksDesktop(),
    );
  }
}
