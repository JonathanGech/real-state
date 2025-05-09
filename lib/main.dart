import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/Pages/home_page.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/responsive_breakpoints.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_bloc.dart';

void main() async{

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ResponsiveBreakpoints(
      watch: 300,
      mobile: 600,
      tablet: 970,
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
    final devicetype = ResponsiveBreakpoints.getDeviceType(MediaQuery.sizeOf(context),
        ResponsiveSizingConfig.instance.breakpoints);
    print('Device Type: $devicetype, Width: $w, Height: $h');
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: switch (devicetype) {
          DeviceScreenType.mobile => validLayout(size: const Size(390, 600)),
          DeviceScreenType.tablet => validLayout(size: const Size(1920, 800)),  // 1440, 700
          DeviceScreenType.desktop => validLayout(size: const Size(1920, 700)),
          DeviceScreenType.watch => validLayout(size: const Size(200, 200)),
        });
  }
}
