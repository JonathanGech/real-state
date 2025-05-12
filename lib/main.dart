import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/Pages/home_page.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/responsive_breakpoints.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_bloc.dart';

void main() async {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ResponsiveBreakpoints(
      watch: 200,
      mobile: 600,
      tablet: 1024,
    ),
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => NavbarBloc(),
      ),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Widget validLayout({required Size size}) {
    return ScreenUtilInit(
      designSize: size,
      builder: (_, __) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.sizeOf(context).height;
    w = MediaQuery.sizeOf(context).width;
 
    final devicetype = ResponsiveBreakpoints.getDeviceType(
        MediaQuery.sizeOf(context),
        ResponsiveSizingConfig.instance.breakpoints);
    log('$devicetype h: $h w: $w');
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: switch (devicetype) {
          DeviceScreenType.mobile => validLayout(size: const Size(600, 720)),
          DeviceScreenType.tablet =>
            validLayout(size: const Size(1440, 700)), // 1440, 700
          DeviceScreenType.desktop => validLayout(size: const Size(1920, 700)),
          DeviceScreenType.watch => validLayout(size: const Size(200, 200)),
        });
  }
}
