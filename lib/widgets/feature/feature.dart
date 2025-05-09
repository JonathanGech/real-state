import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/widgets/feature/views/feature_desktop.dart';
import 'package:real_state/widgets/feature/views/feature_mobile.dart';
import 'package:real_state/widgets/feature/views/feature_tablet.dart';

class Feature extends StatelessWidget {
  const Feature({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const FeatureMobile(),
      tablet: (context) => const FeatureTablet(),
      desktop: (context) => const FeatureDesktop(),
    );
  }
}
