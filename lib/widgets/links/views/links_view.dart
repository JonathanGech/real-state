import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class LinksView extends StatelessWidget {
  const LinksView({
    super.key,
    required this.title,
    required this.assetPath,
  });
  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomUi.defPadding(vr: 0, hr: 10.w),
      child: Container(
        width: 430.w,
        height: 215.h,
        padding: CustomUi.defPadding(vr: 40.h, hr: 20.w),
        decoration: BoxDecoration(
            color: AppColor.g10,
            border: Border.all(color: AppColor.g15),
            borderRadius: BorderRadius.circular(12.w)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: const Alignment(0.9, -0.9),
              child: SizedBox(
                width: 31.w,
                height: 31.h,
                child: Image.asset(
                  'assets/imgs/icons/icon-dir.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 82.w,
                    height: 82.h,
                    child: Image.asset(assetPath, fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(title,
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: 20.sp,
                          color: AppColor.white,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
