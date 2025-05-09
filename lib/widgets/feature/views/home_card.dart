import 'dart:developer';

import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/feature/views/home_card_model.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.homeCardModel,
      this.width,
      required this.paddingContianer,
      required this.radius,
      this.titleFs,
      this.fontsize,
      required this.edgeInsets});
  final HomeCardModel homeCardModel;
  final double? width;
  final EdgeInsets paddingContianer;
  final BorderRadius radius;
  final double? titleFs;
  final double? fontsize;
  final EdgeInsets edgeInsets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: HoverOver(builder: (ishoverd) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: width,
          padding: edgeInsets,
          decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(
                color: ishoverd ? AppColor.p60 : AppColor.g15,
                width: ishoverd ? 3 : 1),
            borderRadius: radius,
            boxShadow: ishoverd
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
            mainAxisSize: MainAxisSize.min,
            children: [
              ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: 100, minWidth: 200 - 30.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.w),
                  child: Image.asset(
                    homeCardModel.imgPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(homeCardModel.title,
                  style: CustomUi.defTextStyle(
                      height: 1.5,
                      fontSize: titleFs,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600)),
              Wrap(
                direction: Axis.horizontal,
                spacing: 1,
                runAlignment: WrapAlignment.end,
                runSpacing: 5,
                children: [
                  Text(homeCardModel.description,
                      softWrap: true,
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: fontsize,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w400)),
                  TextButton(
                    onPressed: () {},
                    child: Text('Read More',
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: fontsize,
                            color: AppColor.p70,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _infoHome(
                      title: '${homeCardModel.bedSize}-Bedrooms',
                      assetPath: 'assets/icons/bed.svg'),
                  _infoHome(
                      title: '${homeCardModel.bathSize}-Bathroom',
                      assetPath: 'assets/icons/bathroom.svg'),
                  _infoHome(
                      title: homeCardModel.type,
                      assetPath: 'assets/icons/villa.svg')
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price',
                          style: CustomUi.defTextStyle(
                              height: 1.5,
                              fontSize: fontsize,
                              color: AppColor.g60,
                              fontWeight: FontWeight.w400)),
                      Text(homeCardModel.price,
                          style: CustomUi.defTextStyle(
                              height: 1.5,
                              fontSize: titleFs,
                              color: AppColor.white,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  const Spacer(),
                  CustomUi.defButton(
                    title: 'View Property Details',
                    onPressed: () {},
                    radius: 10.w,
                    fontSize: fontsize,
                    borderColor: Colors.transparent,
                    fontWeight: FontWeight.w500,
                    backgroundColor: AppColor.p60,
                    textColor: AppColor.white,
                    edgeInsets: paddingContianer,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        );
      }),
    );
  }

  ConstrainedBox _infoHome({
    required String title,
    required String assetPath,
  }) {

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 150.w),
      child: Container(
        padding: CustomUi.defPadding(hr: 8.w, vr: 8.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.g10,
            border: Border.all(color: AppColor.g15, width: 1),
            borderRadius: CustomUi.radiusCircular(radius: 24.w)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 15.w,
              child: SvgPicture.asset(
                assetPath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(title,
                overflow: TextOverflow.ellipsis,
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 16.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

//
  factory HomeCard.desktop({required HomeCardModel homeCardModel}) {
    return HomeCard(
        homeCardModel: homeCardModel,
        width: 525.w,
        edgeInsets: CustomUi.defPadding(vr: 40.h, hr: 30.w),
        paddingContianer: CustomUi.defPadding(vr: 18.h, hr: 24.w),
        radius: CustomUi.radiusCircular(radius: 12.w),
        fontsize: 22.sp,
        titleFs: 28.sp);
  }
  factory HomeCard.tablet({required HomeCardModel homeCardModel}) {
    return HomeCard(
        homeCardModel: homeCardModel,
        width: 575.w,
        edgeInsets: CustomUi.defPadding(vr: 40.h, hr: 30.w),
        paddingContianer: CustomUi.defPadding(vr: 18.h, hr: 24.w),
        radius: CustomUi.radiusCircular(radius: 12.w),
        
        fontsize: 16.sp,
        titleFs: 20.sp);
  }
}
