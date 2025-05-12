import 'dart:math';

import 'package:real_state/utils/responsive_breakpoints.dart';
import 'package:real_state/utils/responsive_builder.dart';

double h = 0;
double w = 0;

extension NumScaleDesktop on num {
  double scale(width, height){
    final scaleFactor = min(w/width, h/height);
    return scaleFactor;
  }
}

extension Scaler on num {
  double get 
  sl {
    final deviceType = ResponsiveBreakpoints.deviceType;
    switch (deviceType) {
      case DeviceScreenType.mobile:
        return this * scale(390, 600,);
      case DeviceScreenType.tablet:
        return this * scale(1440, 900,);
      case DeviceScreenType.desktop:
        return this * scale(1920, 1080,);
      case DeviceScreenType.watch:  
        return this * scale(200, 200,);
      
    }
  }
}
