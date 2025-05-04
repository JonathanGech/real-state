import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/testimonials/views/testimonials_card_list_view.dart';

class TestimonialsDesktop extends StatelessWidget {
  const TestimonialsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: CustomUi.defPadding(vr: 0, hr: 162.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ========================= Icon ======================
              SizedBox(
                width: 50.w,
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
                      fontSize: 48.sp,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600)),
              // ========================= Description and button ======================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 1200.w,
                      child: Text(
                        "Read the success stories and heartfelt testimonials from our valued clients. Discover why they chose Estatein for their real estate needs.",
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 22.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w400),
                      )),
                  const Spacer(),
                  CustomUi.defButton(
                    title: 'View all Testimonials',
                    onPressed: () {},
                    radius: 10.w,
                    fontSize: 22.sp,
                    borderColor: AppColor.g15,
                    fontWeight: FontWeight.w500,
                    backgroundColor: AppColor.g10,
                    textColor: AppColor.white,
                    edgeInsets: CustomUi.defPadding(vr: 18.w, hr: 24.w),
                  )
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              // ========================= List View ======================
              const TestimonialsCardListView(),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        )
      ],
    );
  }
}
