import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        width: 260.w,
        padding: CustomUi.defPadding(vr: 14.h, hr: 24.w),
        decoration: BoxDecoration(
            color: AppColor.g10,
            borderRadius: BorderRadius.circular(12.w),
            border: Border.all(color: AppColor.g15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomUi.defTextStyle(
                fontSize: 40.sp,
                color: AppColor.white,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              style: CustomUi.defTextStyle(
                fontSize: 22.sp,
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
}
