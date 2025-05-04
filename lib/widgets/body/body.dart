import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:real_state/widgets/body/views/body_mobile.dart';
import 'package:real_state/widgets/body/views/body_tablet.dart';
import 'package:real_state/widgets/body/views/body_desktop.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const BodyMobile(),
      tablet: (context) => const BodyTablet(),
      desktop: (context) => const BodyDesktop(),
    );
  }
}
