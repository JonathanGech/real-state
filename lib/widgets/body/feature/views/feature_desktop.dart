import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class FeatureDesktop extends StatelessWidget {
  const FeatureDesktop({super.key});

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
              Text('Featured Properties',
                  style: CustomUi.defTextStyle(
                      height: 1.5,
                      fontSize: 48.sp,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 1200.w,
                      child: Text(
                        'Explore our handpicked selection of featured properties. Each listing offers a glimpse into exceptional homes and investments available through Estatein. Click "View Details" for more information.',
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 18.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w400),
                      )),
                  const Spacer(),
                  CustomUi.defButton(
                    title: 'View all Properties',
                    onPressed: () {},
                    radius: 10.w,
                    fontSize: 18.sp,
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
              Container(
                width: 512.w,
                padding: CustomUi.defPadding(vr: 40.h, hr: 40.w),
                decoration: BoxDecoration(
                    color: AppColor.g8,
                    border: Border.all(color: AppColor.g15, width: 1),
                    borderRadius: CustomUi.radiusCircular(radius: 12.w)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.w),
                      child: Image.asset(
                        'assets/imgs/img-1.png',
                        fit: BoxFit.cover,
                        width: 432.w,
                        height: 318.h,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Seaside Serenity Villa",
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 24.sp,
                            color: AppColor.white,
                            fontWeight: FontWeight.w600)),
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 1,
                      children: [
                        Text(
                            "A stunning 4-bedroom, 3-bathroom villa in a peaceful suburban neighborhood... ",
                            softWrap: true,
                            style: CustomUi.defTextStyle(
                                height: 1.5,
                                fontSize: 18.sp,
                                color: AppColor.g60,
                                fontWeight: FontWeight.w400)),
                        TextButton(
                          onPressed: () {},
                          child: Text('Read More',
                              style: CustomUi.defTextStyle(
                                  height: 1.5,
                                  fontSize: 18.sp,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _infoHome(
                            title: '4-Bedrooms',
                            assetPath: 'assets/icons/bed.svg'),
                        _infoHome(
                            title: '3-Bathroom',
                            assetPath: 'assets/icons/bathroom.svg'),
                        _infoHome(
                            title: 'Villa', assetPath: 'assets/icons/villa.svg')
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
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
                                    fontSize: 18.sp,
                                    color: AppColor.g60,
                                    fontWeight: FontWeight.w400)),
                            Text('\$550,000',
                                style: CustomUi.defTextStyle(
                                    height: 1.5,
                                    fontSize: 24.sp,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                        const Spacer(),
                        CustomUi.defButton(
                          title: 'View Property Details',
                          onPressed: () {},
                          radius: 10.w,
                          fontSize: 18.sp,
                          borderColor: Colors.transparent,
                          fontWeight: FontWeight.w500,
                          backgroundColor: AppColor.p60,
                          textColor: AppColor.white,
                          edgeInsets: CustomUi.defPadding(vr: 18.h, hr: 24.w),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.w,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Container _infoHome({required String title, required String assetPath}) {
    return Container(
      padding: CustomUi.defPadding(hr: 14.w, vr: 8.h),
      decoration: BoxDecoration(
          color: AppColor.g10,
          border: Border.all(color: AppColor.g15, width: 1),
          borderRadius: CustomUi.radiusCircular(radius: 28.w)),
      child: Row(
        children: [
          SizedBox(
            width: 17.w,
            child: SvgPicture.asset(
              assetPath,
              fit: BoxFit.cover,
            ),
          ),
          Text(title,
              style: CustomUi.defTextStyle(
                  height: 1.5,
                  fontSize: 18.sp,
                  color: AppColor.white,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
