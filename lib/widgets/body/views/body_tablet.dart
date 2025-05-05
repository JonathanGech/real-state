import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/body/views/info.dart';

class BodyTablet extends StatelessWidget {
  const BodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    log('wd: $w');
    return Column(
      children: [
        // ========================= Discover section ======================
        SizedBox(
          width: w,
          height: 670.h,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: w * 0.45,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 98.h, bottom: 98.h, left: 80.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 610.w,
                            child: Text(
                                'Discover Your Dream Property with Estateing',
                                style: CustomUi.defTextStyle(
                                    height: 1.2,
                                    fontSize: 46.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.white)),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 610.w,
                            child: Text(
                              'Your journey to finding the perfect property begins here. Explore our listings to find the home that matches your dreams.',
                              style: CustomUi.defTextStyle(
                                  height: 1.5,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.g60),
                            ),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomUi.defButton(
                                title: 'Learn More',
                                radius: 8.w,
                                fontSize: 14.sp,
                                borderColor: AppColor.g15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Urbanist',
                                backgroundColor: AppColor.g10,
                                textColor: AppColor.white,
                                edgeInsets:
                                    CustomUi.defPadding(vr: 14.h, hr: 20.w),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              CustomUi.defButton(
                                title: 'Browse Properties',
                                radius: 8.w,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                borderColor: Colors.transparent,
                                fontFamily: 'Urbanist',
                                backgroundColor: AppColor.p60,
                                textColor: AppColor.white,
                                edgeInsets:
                                    CustomUi.defPadding(vr: 14.h, hr: 20.w),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Info(title: '200+', subtitle: 'Happy Clients', isTablet: true,),
                              Info(
                                  title: '10k+',
                                  subtitle: 'Properties for Clients', isTablet: true,),
                              Info(
                                  title: '16+',
                                  subtitle: 'Years of Experience', isTablet: true,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 60.w,),
                  Expanded(child: Image.asset(
                    'assets/imgs/bg-1.png',
                    fit: BoxFit.contain,
                  ))
                ],
              ),
              Align(
                alignment:  Alignment(0, -0.7),
                child: Image.asset('assets/imgs/logo-center.png',
                    width: 129.w, fit: BoxFit.cover),
              )
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
