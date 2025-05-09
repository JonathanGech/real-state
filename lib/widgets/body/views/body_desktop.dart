import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/body/views/info.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ========================= Discover section ======================
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: w * 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 120.h, bottom: 120.h, left: 140.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 758.w,
                          child: Text(
                              'Discover Your Dream Property with Estateing',
                              style: CustomUi.defTextStyle(
                                  height: 1.2,
                                  fontSize: 60.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.white)),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        SizedBox(
                          width: 758.w,
                          child: Text(
                            'Your journey to finding the perfect property begins here. Explore our listings to find the home that matches your dreams.',
                            style: CustomUi.defTextStyle(
                                height: 1.5,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.g60),
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomUi.defButton(
                              title: 'Learn More',
                              radius: 10.w,
                              fontSize: 22.sp,
                              borderColor: AppColor.g15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Urbanist',
                              backgroundColor: AppColor.g10,
                              textColor: AppColor.white,
                              edgeInsets:
                                  CustomUi.defPadding(vr: 18.h, hr: 24.w),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            CustomUi.defButton(
                              title: 'Browse Properties',
                              radius: 10.w,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w400,
                              borderColor: Colors.transparent,
                              fontFamily: 'Urbanist',
                              backgroundColor: AppColor.p60,
                              textColor: AppColor.white,
                              edgeInsets:
                                  CustomUi.defPadding(vr: 18.h, hr: 24.w),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Info.desktop(title: '200+', subtitle: 'Happy Clients'),
                            Info.desktop(
                                title: '10k+',
                                subtitle: 'Properties for Clients'),
                            Info.desktop(
                                title: '16+',
                                subtitle: 'Years of Experience'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 0.5,
                  child: Image.asset(
                    'assets/imgs/bg-1.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment(0, -0.8.h),
              child: Image.asset('assets/imgs/logo-center.png',
                  width: 250.w, fit: BoxFit.cover),
            )
          ],
        ),

      ],
    );
  }
}
