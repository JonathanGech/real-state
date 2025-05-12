
import 'package:flutter/material.dart';
import 'package:real_state/utils/responsive_builder.dart';

class ResponsiveBreakpoints {
  final double watch;
  final double mobile;
  final double tablet;
  static DeviceScreenType deviceType = DeviceScreenType.desktop;

  const ResponsiveBreakpoints({
    this.watch = 300,
    this.mobile = 600,
    this.tablet = 950,
  });
  static DeviceScreenType getDeviceType(
      Size screenSize, ResponsiveBreakpoints breakpoints) {
    final width = screenSize.width;

    if (width < breakpoints.watch) {
      deviceType = DeviceScreenType.watch;
      return DeviceScreenType.watch;
    } else if (width < breakpoints.mobile) {
      deviceType = DeviceScreenType.mobile;
      return DeviceScreenType.mobile;
    } else if (width < breakpoints.tablet) {
      deviceType = DeviceScreenType.tablet;
      return DeviceScreenType.tablet;
    } else {
      deviceType = DeviceScreenType.desktop;
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
