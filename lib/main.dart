import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state/Pages/home_page.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_bloc.dart';

void main() {
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

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.sizeOf(context).height;
    w = MediaQuery.sizeOf(context).width;
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
