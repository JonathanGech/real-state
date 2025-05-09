import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';

class ResponsiveBreakpoints {
  final double watch;
  final double mobile;
  final double tablet;

  const ResponsiveBreakpoints({
    this.watch = 300,
    this.mobile = 600,
    this.tablet = 950,
  });
  static DeviceScreenType getDeviceType(
      Size screenSize, ResponsiveBreakpoints breakpoints) {
    final width = screenSize.width;

    if (width < breakpoints.watch) {
      return DeviceScreenType.watch;
    } else if (width < breakpoints.mobile) {
      return DeviceScreenType.mobile;
    } else if (width < breakpoints.tablet) {
      log('$width');
      return DeviceScreenType.tablet;
    } else {
      return DeviceScreenType.desktop;
    }
  }
}

class ResponsiveSizingConfig {
  static final ResponsiveSizingConfig instance =
      ResponsiveSizingConfig._internal();

  ResponsiveBreakpoints breakpoints = const ResponsiveBreakpoints();

  ResponsiveSizingConfig._internal();

  void setCustomBreakpoints(ResponsiveBreakpoints newBreakpoints) {
    breakpoints = newBreakpoints;
  }
}
