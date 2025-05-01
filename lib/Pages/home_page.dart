import 'package:flutter/material.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/widgets/body/body.dart';
import 'package:real_state/widgets/navbar/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.g8,
      body: Column(
        children: [
          Navbar(),
          Expanded(child: SingleChildScrollView(child: Body()))
        ],
      ),
    );
  }
}
