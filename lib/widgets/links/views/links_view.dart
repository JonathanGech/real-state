import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class LinksView extends StatelessWidget {
  const LinksView({
    super.key,
    required this.title,
    required this.assetPath,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
    this.logoWidth,
    this.logoHeight,
    this.fontsize,
  });
  final String title;
  final String assetPath;

  final EdgeInsets? padding;

  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final double? logoWidth;
  final double? logoHeight;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomUi.defPadding(vr: 0, hr: 10.w),
      child: Container(
        width: width!,
        height: height!,
        padding: padding,
        decoration: BoxDecoration(
            color: AppColor.g10,
            border: Border.all(color: AppColor.g15),
            borderRadius: borderRadius),
        child: Stack(
          
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
                    width: logoWidth,
                    height: logoHeight,
                    child: Image.asset(assetPath, fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(title,
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: fontsize,
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

  factory LinksView.tablet({
    required String title,
    required String assetPath,
  }) {
    return LinksView(
      title: title,
      assetPath: assetPath,
      padding: CustomUi.defPadding(vr: 30.h, hr: 16.w),
      borderRadius: BorderRadius.circular(18.w),
      width: 348.w,
      height: 160.h,
      logoWidth: 60.w,
      logoHeight: 60.h,
      fontsize: 16.sp,
    );
  }
  factory LinksView.desktop({
    required String title,
    required String assetPath,
  }) {
    return LinksView(
      title: title,
      assetPath: assetPath,
      padding: CustomUi.defPadding(vr: 40.h, hr: 20.w),
      borderRadius: BorderRadius.circular(12.w),
      width: 430.w,
      height: 215.h,
      logoWidth: 82.w,
      logoHeight: 82.h,
      fontsize: 20.sp,
    );
  }
}
