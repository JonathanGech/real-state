import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.title,
    required this.subtitle,
    this.padding,
    this.titleFs,
    this.subtitleFs, this.width, this.radius,
  });
  final String title;
  final String subtitle;

  final EdgeInsets? padding;
  final double? titleFs;
  final double? subtitleFs;
  final double? width;
  final BorderRadius? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        padding: padding,
        // width: width,
        decoration: BoxDecoration(
            color: AppColor.g10,
            borderRadius: radius,
            border: Border.all(color: AppColor.g15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomUi.defTextStyle(
                fontSize: titleFs,
                color: AppColor.white,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              softWrap: true,
              overflow: TextOverflow.clip,
              style: CustomUi.defTextStyle(
                fontSize: subtitleFs,
                color: AppColor.g60,
                height: 1.5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  factory Info.tablet({required String title, required String subtitle}) {
    return Info(
      title: title,
      subtitle: subtitle,
      padding: CustomUi.defPadding(vr: 14.h, hr: 24.w),
      width: 193.w,
      radius: BorderRadius.circular(12.w),
      titleFs: 36.sp,
      subtitleFs: 18.sp,
      
    );
  }
  factory Info.desktop({required String title, required String subtitle}) {
    return Info(
      title: title,
      subtitle: subtitle,
      padding: CustomUi.defPadding(vr: 14.h, hr: 20.w),
      radius: BorderRadius.circular(12.w),
      width: 240.w,
      titleFs: 40.sp,
      subtitleFs: 20.sp,
    );
  }
}
