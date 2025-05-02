import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/body/feature/feature.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ========================= Discover section ======================
        SizedBox(
          width: w,
          height: 814.h,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: w * 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 128.h, bottom: 128.h, left: 162.w),
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
                                  fontSize: 18.sp,
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
                                fontSize: 18.sp,
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
                                fontSize: 18.sp,
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Info(title: '200+', subtitle: 'Happy Clients'),
                              Info(
                                  title: '10k+',
                                  subtitle: 'Properties for Clients'),
                              Info(
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
              )
            ],
          ),
        ),

        // ========================= Links section ======================
        SizedBox(
          height: 30.h,
        ),
        Container(
          width: w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(color: AppColor.g15, width: 4),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Links(
                  title: 'Find Your Dream Home',
                  assetPath: 'assets/imgs/icons/icon-1.png'),
              Links(
                  title: 'Unlock Property Value',
                  assetPath: 'assets/imgs/icons/icon-2.png'),
              Links(
                  title: 'Effertless Property Management',
                  assetPath: 'assets/imgs/icons/icon-3.png'),
              Links(
                  title: 'Smart Investment Informed Decisions',
                  assetPath: 'assets/imgs/icons/icon-1.png'),
            ],
          ),
        ),

        // ========================= Fetures section ======================
        SizedBox(
          height: 80.h,
        ),
        const Feature()
      ],
    );
  }
}

class Links extends StatelessWidget {
  const Links({
    super.key,
    required this.title,
    required this.assetPath,
  });
  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomUi.defPadding(vr: 0, hr: 10.w),
      child: Container(
        width: 430.w,
        height: 215.h,
        padding: CustomUi.defPadding(vr: 40.h, hr: 20.w),
        decoration: BoxDecoration(
            color: AppColor.g10,
            border: Border.all(color: AppColor.g15),
            borderRadius: BorderRadius.circular(12.w)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: const Alignment(0.9, -0.9),
              child: SizedBox(
                width: 31.w,
                height: 31.h,
                child: Image.asset(
                  'assets/imgs/icons/icon-dir.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 82.w,
                    height: 82.h,
                    child: Image.asset(assetPath, fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(title,
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: 20.sp,
                          color: AppColor.white,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Container(
        width: 240.w,
        height: 130.h,
        padding: CustomUi.defPadding(vr: 14.h, hr: 24.w),
        decoration: BoxDecoration(
            color: AppColor.g10,
            borderRadius: BorderRadius.circular(12.w),
            border: Border.all(color: AppColor.g15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomUi.defTextStyle(
                fontSize: 40.sp,
                color: AppColor.white,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              style: CustomUi.defTextStyle(
                fontSize: 18.sp,
                color: AppColor.g60,
                height: 1.5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
