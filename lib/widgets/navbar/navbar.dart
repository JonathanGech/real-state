import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:real_state/widgets/navbar/views/navbar_mobile.dart';
import 'package:real_state/widgets/navbar/views/navbar_tablet.dart';
import 'package:real_state/widgets/navbar/views/navbar_desktop.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavbarMobile(),
      tablet: (context) => const NavbarTablet(),
      desktop: (context) => ScreenUtilInit(
          designSize: const Size(1920, 1080),
          builder: (context, child) => const NavbarDesktop()),
    );
  }
}
