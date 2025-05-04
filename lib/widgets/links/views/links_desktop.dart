import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/links/views/links_view.dart';

class LinksDesktop extends StatelessWidget {
  const LinksDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ========================= LinksView section ======================
        Container(
          width: w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(color: AppColor.g15, width: 4),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LinksView(
                  title: 'Find Your Dream Home',
                  assetPath: 'assets/imgs/icons/icon-1.png'),
              LinksView(
                  title: 'Unlock Property Value',
                  assetPath: 'assets/imgs/icons/icon-2.png'),
              LinksView(
                  title: 'Effertless Property Management',
                  assetPath: 'assets/imgs/icons/icon-3.png'),
              LinksView(
                  title: 'Smart Investment Informed Decisions',
                  assetPath: 'assets/imgs/icons/icon-1.png'),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        )
      ],
    );
  }
}
