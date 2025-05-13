import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';

class LinksView extends StatelessWidget {
  const LinksView({
    super.key,
    required this.title,
    required this.assetPath,
    this.borderRadius,
    this. assetwidth,
    this.titleWidth,
    this.fontsize,
  });
  final String title;
  final String assetPath;

  final BorderRadius? borderRadius;
  final double? assetwidth;
  final double? titleWidth;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomUi.defPadding(vr: 0, hr: 10.w),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
  
          decoration: BoxDecoration(
              color: AppColor.g10,
              border: Border.all(color: AppColor.g15),
              borderRadius: borderRadius),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: const Alignment(.9, -.9),
                child: SizedBox(
                  width:assetwidth,
                  child: Image.asset(
                    'assets/imgs/icons/icon-dir.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Flexible(
                    child: AspectRatio(
                     aspectRatio: 1.2,
                      child: Image.asset(assetPath, fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      width: titleWidth! *3,
                      child: Text(title,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: CustomUi.defTextStyle(
                              height: 1.5,
                              fontSize: fontsize,
                              color: AppColor.white,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  factory LinksView.desktop({
    required String title,
    required String assetPath,
  }) {
    return LinksView(
      title: title,
      assetPath: assetPath,
      borderRadius: BorderRadius.circular(12.w),
       assetwidth: 40.sl,
      titleWidth: 82.w,
      fontsize: 20.sp,
    );
  }
    factory LinksView.tablet({
    required String title,
    required String assetPath,
  }) {
    return LinksView(
      title: title,
      assetPath: assetPath,
      borderRadius: BorderRadius.circular(18.w),
      assetwidth: 40.sl,
      titleWidth: 60.w,
      fontsize: 16.sp,
    );
  }

  factory LinksView.mobile({
    required String title,
    required String assetPath,
  }) {
    return LinksView(
      title: title,
      assetPath: assetPath,
      borderRadius: BorderRadius.circular(10.r),
      assetwidth: 20.sl,
      titleWidth: 50.w,
      fontsize: 14.sp,
    );
  }
}
