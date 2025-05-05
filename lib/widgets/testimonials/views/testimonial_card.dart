import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/testimonials/views/testimonial_card_model.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key, required this.testimonialCardModel});
  final TestimonialCardModel testimonialCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: HoverOver(builder: (ishovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 380.w,
          padding: CustomUi.defPadding(vr: 20.h, hr: 20.w),
          decoration: BoxDecoration(
            gradient: ishovered
                ? LinearGradient(
                    colors: [
                      AppColor.p70.withValues(alpha: 0.5),
                      AppColor.g8,
                      AppColor.g8,
                      AppColor.g8,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : const LinearGradient(colors: [AppColor.g8, AppColor.g8]),
            border: Border.all(
                color: ishovered ? AppColor.p60 : AppColor.g15,
                width: ishovered ? 3 : 1),
            borderRadius: CustomUi.radiusCircular(radius: 12.w),
            boxShadow: ishovered
                ? [
                    BoxShadow(
                      color: AppColor.w90.withOpacity(0.4),
                      blurRadius: 20,
                      spreadRadius: -10,
                      offset: const Offset(0, 5),
                    ),
                  ]
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  for (int i = 0; i < testimonialCardModel.ratingCount; i++)
                    SvgPicture.asset(
                      'assets/icons/star.svg',
                      width: 30,
                    )
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                testimonialCardModel.title,
                style: CustomUi.defTextStyle(
                    color: AppColor.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
              SizedBox(height: 20.h),
              Text(
                testimonialCardModel.description,
                style: CustomUi.defTextStyle(
                    color: AppColor.g60,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.5),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.w,
                    backgroundImage: NetworkImage(
                      testimonialCardModel.imgPath,
                    ),
                    onBackgroundImageError: (exception, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        testimonialCardModel.fullName,
                        style: CustomUi.defTextStyle(
                            color: AppColor.white,
                            fontSize: 22.w,
                            fontWeight: FontWeight.w600,
                            height: 1.5),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        testimonialCardModel.location,
                        style: CustomUi.defTextStyle(
                            color: AppColor.g60,
                            fontSize: 18.w,
                            fontWeight: FontWeight.w400,
                            height: 1.5),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 5.h),
            ],
          ),
        );
      }),
    );
  }
}
