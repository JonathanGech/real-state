import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/widgets/navbar/views/navbar_mobile.dart';
import 'package:real_state/widgets/navbar/views/navbar_desktop.dart';
import 'package:real_state/widgets/navbar/views/navbar_tablet.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavbarMobile(),
      tablet: (context) => const NavbarTablet(),
      desktop: (context) => const NavbarDesktop(),
    );
  }
}
