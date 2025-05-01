import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/body/feature/views/home_card.dart';
import 'package:real_state/widgets/body/feature/views/home_card_model.dart';

class FeatureDesktop extends StatefulWidget {
  const FeatureDesktop({super.key});

  @override
  State<FeatureDesktop> createState() => _FeatureDesktopState();
}

class _FeatureDesktopState extends State<FeatureDesktop> {
  final List<HomeCardModel> _models = [
    HomeCardModel(
        title: 'SeaSide Serenity Villa',
        description:
            "A stunning 4-bedroom, 3-bathroom villa in a peaceful suburban neighborhood.",
        type: 'Villa',
        price: '\$550,000',
        imgPath: 'assets/imgs/img-1.png',
        bedSize: 4,
        bathSize: 3),
    HomeCardModel(
        title: 'Mountain View Retreat',
        description:
            "A cozy 3-bedroom cabin with breathtaking mountain views and modern amenities.",
        type: 'Cabin',
        price: '\$350,000',
        imgPath: 'assets/imgs/img-2.png',
        bedSize: 3,
        bathSize: 2),
    HomeCardModel(
        title: 'Urban Oasis Apartment',
        description:
            "A luxurious 2-bedroom apartment in the heart of the city, featuring a rooftop pool.",
        type: 'Apartment',
        price: '\$750,000',
        imgPath: 'assets/imgs/img-3.png',
        bedSize: 2,
        bathSize: 2),
    HomeCardModel(
        title: 'Mountain View Retreat',
        description:
            "A cozy 3-bedroom cabin with breathtaking mountain views and modern amenities.",
        type: 'Cabin',
        price: '\$800,000',
        imgPath: 'assets/imgs/img-2.png',
        bedSize: 4,
        bathSize: 2),
    HomeCardModel(
        title: 'Urban Oasis Apartment',
        description:
            "A luxurious 2-bedroom apartment in the heart of the city, featuring a rooftop pool.",
        type: 'Apartment',
        price: '\$1,250,000',
        imgPath: 'assets/imgs/img-3.png',
        bedSize: 6,
        bathSize: 2),
  ];
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
              SizedBox(
                width: w,
                height: 800.h,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.touch
                      }),
                  child: ListView.builder(
                    itemCount: _models.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return HomeCard(homeCardModel: _models[index]);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 80.w,
              )
            ],
          ),
        )
      ],
    );
  }
}
