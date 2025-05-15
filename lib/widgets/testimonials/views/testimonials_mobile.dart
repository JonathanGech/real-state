import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/testimonials/views/testimonials_card_list_view.dart';

class TestimonialsMobile extends StatelessWidget {
  const TestimonialsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomUi.defPadding(vr: 0, hr: 30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========================= Icon ======================
          SizedBox(
            width: 50.w.clamp(30, 50),
            child: Image.asset(
              'assets/imgs/icons/more.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          // ========================= Title ======================
          Text('What Our Clients Say',
              style: CustomUi.defTextStyle(
                  height: 1.5,
                  fontSize: 38.sp,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600)),
          // ========================= Description and button ======================
          SizedBox(
              width: 975.w,
              child: Text(
                "Read the success stories and heartfelt testimonials from our valued clients. Discover why they chose Estatein for their real estate needs.",
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 16.sp,
                    color: AppColor.g60,
                    fontWeight: FontWeight.w400),
              )),

          SizedBox(
            height: 40.sl,
          ),
          // ========================= List View ======================
          const TestimonialsCardListView(deviceType: DeviceScreenType.mobile),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
