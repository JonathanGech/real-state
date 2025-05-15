import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleFs,
    this.subtitleFs,
    this.aspectRation = 2,
  });
  final String title;
  final String subtitle;
  final double? titleFs;
  final double? subtitleFs;
  final double? aspectRation;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: AspectRatio(
          aspectRatio: aspectRation!,
          child: Container(
            padding: EdgeInsets.only(left: 10.sl, top: 5.sl),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.g10,
                borderRadius: BorderRadius.circular(12.r),
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
        ),
      ),
    );
  }

  factory Info.tablet({required String title, required String subtitle}) {
    return Info(
      title: title,
      subtitle: subtitle,
      titleFs: 36.sp,
      subtitleFs: 18.sp,
    );
  }
  factory Info.desktop({required String title, required String subtitle}) {
    return Info(
      title: title,
      subtitle: subtitle,
      titleFs: 40.sp,
      subtitleFs: 20.sp,
    );
  }
  factory Info.mobile({required String title, required String subtitle}) {
    return Info(
      title: title,
      subtitle: subtitle,
      titleFs: 28.sp,
      subtitleFs: 16.sp,
      aspectRation: 1.5,
    );
  }
}
