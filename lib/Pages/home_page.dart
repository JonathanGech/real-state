import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/widgets/navbar/navbar.dart';
import 'package:real_state/widgets/body/body.dart';
import 'package:real_state/widgets/footer/footer.dart';
import 'package:real_state/widgets/start/start.dart';
import 'package:real_state/widgets/feature/feature.dart';
import 'package:real_state/widgets/links/links.dart';
import 'package:real_state/widgets/questions/questions.dart';
import 'package:real_state/widgets/testimonials/testimonials.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.g8,
      body: Column(
        children: [
          const Navbar(),
          Expanded(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch
            }),
            child: const SingleChildScrollView(
                child: Column(
              children: [
                // ========================= Body section ======================
                Body(),
                // ========================= Links section ======================
                Links(),
                // ========================= Feature section ======================
                Feature(),
                // ========================= Testimonials section ======================
                Testimonials(),
                // ========================= Questions section ======================
                Questions(),
                // ========================= Start section ======================
                Start(),
                // ========================= Footer section ======================
                Footer(),
              ],
            )),
          ))
        ],
      ),
    );
  }
}
