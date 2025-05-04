import 'package:flutter/material.dart';
import 'package:real_state/widgets/links/views/links_desktop.dart';
import 'package:real_state/widgets/links/views/links_mobile.dart';
import 'package:real_state/widgets/links/views/links_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const LinksMobile(),
      tablet: (context) => const LinksTablet(),
      desktop: (context) => const LinksDesktop(),
    );
  }
}
