import 'package:flutter/material.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/widgets/start/start.dart';
// import 'package:real_state/widgets/feature/feature.dart';
// import 'package:real_state/widgets/links/links.dart';
// import 'package:real_state/widgets/questions/questions.dart';
import 'package:real_state/widgets/testimonials/testimonials.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.g8,
      body: Column(
        children: [
          // Navbar(),
          Expanded(
              child: SingleChildScrollView(
                
                  child: Column(

            children: [
              // ========================= Body section ======================
              // Body(),
              // ========================= Links section ======================
              // Links(),
              // ========================= Feature section ======================
              // Feature(),
              // ========================= Testimonials section ======================
              // Testimonials(),
              // ========================= Questions section ======================
              // Questions(),
              // ========================= Start section ======================
              Start(),
              // ========================= Footer section ======================
              // Footer(),
            ],
          )))
        ],
      ),
    );
  }
}
