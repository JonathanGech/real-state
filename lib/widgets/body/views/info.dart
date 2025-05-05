import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class Info extends StatelessWidget {
  const Info(
      {super.key,
      required this.title,
      required this.subtitle,
      this.isTablet = false});
  final String title;
  final String subtitle;
  final bool? isTablet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w ),
      child: Container(
        padding: CustomUi.defPadding(vr: 14.h, hr: isTablet! ? 20.w : 24.w),
        decoration: BoxDecoration(
            color: AppColor.g10,
            borderRadius: BorderRadius.circular(isTablet! ? 8.w : 12.w),
            border: Border.all(color: AppColor.g15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomUi.defTextStyle(
                fontSize: isTablet!? 30.sp: 40.sp,
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
                fontSize: isTablet!?16.sp: 22.sp,
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
