import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/testimonials/views/testimonial_card_model.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key, required this.testimonialCardModel, this.width, this.padding, this.assetSize, this.locationFs, this.titleFs, this.fullNameFs});
  final TestimonialCardModel testimonialCardModel;
  final double? width;
  final double? padding;
  final double? assetSize;
  final double? locationFs;
  final double? titleFs;
  final double? fullNameFs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding!.w),
      child: HoverOver(builder: (ishovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: width,
          padding: CustomUi.defPadding(vr: padding?.h, hr: padding?.w),
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
            borderRadius: CustomUi.radiusCircular(radius: (padding??0) * 0.6 .w),
            boxShadow: ishovered
                ? [
                    BoxShadow(
                      color: AppColor.w90.withValues(alpha: .4),
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
                      width: assetSize,
                    )
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                testimonialCardModel.title,
                style: CustomUi.defTextStyle(
                    color: AppColor.white,
                    fontSize: titleFs,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
              SizedBox(height: 20.h),
              Text(
                testimonialCardModel.description,
                style: CustomUi.defTextStyle(
                    color: AppColor.g60,
                    fontSize: locationFs,
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
                            fontSize: fullNameFs,
                            fontWeight: FontWeight.w600,
                            height: 1.5),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        testimonialCardModel.location,
                        style: CustomUi.defTextStyle(
                            color: AppColor.g60,
                            fontSize: locationFs,
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

  factory TestimonialCard.desktop({required TestimonialCardModel testimonialCardModel}){
    return TestimonialCard(testimonialCardModel: testimonialCardModel, fullNameFs:  22.sp, assetSize: 30, padding: 20,width: 380.w, locationFs: 18.sp, titleFs: 28.sp,);
  }
  factory TestimonialCard.tablet({required TestimonialCardModel testimonialCardModel}){
    return TestimonialCard(testimonialCardModel: testimonialCardModel, fullNameFs:  18.sp, assetSize: 20, padding: 10,width: 380.w + 380.w * 0.13, locationFs: 16.w, titleFs: 20.sp,);
  }
}
