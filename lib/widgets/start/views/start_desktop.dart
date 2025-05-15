// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';

class StartDesktop extends StatelessWidget {
  const StartDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 4,
            child: Container(
              
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: AppColor.g15, width: 2),
                      bottom: BorderSide(color: AppColor.g15, width: 2)),
                  color: AppColor.g8),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset('assets/imgs/ab-1.png'),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/imgs/ab-2.png'),
                  ),
                  Container(
                    padding: CustomUi.defPadding(vr: 20.h, hr: 162.w),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                           width: w *0.6,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ========================= Title ======================
                              Text('Start Your Real Estate Journey Today',
                                  style: CustomUi.defTextStyle(
                                      height: 1.5,
                                      fontSize: 48.sp,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w600)),
                              // ========================= Description ======================
                              SizedBox(
                                height: 15.sl,
                              ),
                              Text(
                                "Your dream property is just a click away. Whether you're looking for a new home, a strategic investment, or expert real estate advice, Estatein is here to assist you every step of the way. Take the first step towards your real estate goals and explore our available properties or get in touch with our team for personalized assistance.",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 22.w,
                                    color: AppColor.g60,
                                    fontWeight: FontWeight.w400),
                              ),
                              
                              // ========================= Description and button ======================
                            ],
                          ),
                        ),
                        const Spacer(),
                        // ========================= Button ======================
                        Flexible(
                          flex: 3,
                          child: AspectRatio(
                            aspectRatio: 3.5,
                            child: CustomUi.defButton(
                              title: 'Explore Properties',
                              onPressed: () {},
                              radius: 10.w,
                              fontSize: 22.sp,
                              edgeInsets: EdgeInsets.zero,
                              borderColor: Colors.transparent,
                              fontWeight: FontWeight.w500,
                              backgroundColor: AppColor.p60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.sl,
        )
      ],
    );
  }
}
