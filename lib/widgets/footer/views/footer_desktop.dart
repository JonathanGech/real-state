import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: CustomUi.defPadding(hr: 100.w, vr: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Email section
              Container(
                width: 538.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Image.asset('assets/imgs/logo.png'),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // email text
                    Container(
                      width: 538.w,
                      padding: CustomUi.defPadding(vr: 10.h, hr: 20.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.g15, width: 1),
                        borderRadius: CustomUi.radiusCircular(radius: 12.w),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // textfiled
                          Row(
                            children: [
                              SizedBox(
                                  width: 30.w,
                                  child: SvgPicture.asset(
                                      'assets/icons/email.svg')),
                              SizedBox(
                                width: 15.w,
                              ),
                              SizedBox(
                                width: 400.w,
                                child: TextField(
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 20.sp,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(
                                      color: AppColor.g60,
                                      fontSize: 20.sp,
                                    ),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 20.w),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // emailSend logo with gesuture detector
                          GestureDetector(
                              onTap: () {
                                // Handle email send action
                              },
                              child: SizedBox(
                                child: SvgPicture.asset('assets/icons/send.svg',
                                    width: 30.w,
                                    height: 30.h,
                                    fit: BoxFit.cover),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // links section
              // Home
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Home
                    Text('Home',
                        style: CustomUi.defTextStyle(
                            height: 1.2,
                            fontSize: 20.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w600)),
                    //Links
                    SizedBox(
                      height: 20.h,
                    ),
                    _links(text: 'Hero Section', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Features', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Properties', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Testimonials', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: "FAQ's", onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
              // About us
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Home
                    Text('About Us',
                        style: CustomUi.defTextStyle(
                            height: 1.2,
                            fontSize: 20.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w600)),
                    //Links
                    SizedBox(
                      height: 20.h,
                    ),
                    _links(text: 'Our Story', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Our Works', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'How It Works', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Our Team', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: "Our Clients", onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
              //Properties
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Properties',
                        style: CustomUi.defTextStyle(
                            height: 1.2,
                            fontSize: 20.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w600)),
                    //Links
                    SizedBox(
                      height: 20.h,
                    ),
                    _links(text: 'Portfolio', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Categories', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              // Services
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Home
                    Text('Services',
                        style: CustomUi.defTextStyle(
                            height: 1.2,
                            fontSize: 20.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w600)),
                    //Links
                    SizedBox(
                      height: 20.h,
                    ),
                    _links(text: 'Valuation Mastery', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Strategic Marketing', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Negotiation Wizardry', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Closing Success', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: "Property Management", onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
              // Contact
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Home
                    Text('Contact Us',
                        style: CustomUi.defTextStyle(
                            height: 1.2,
                            fontSize: 20.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w600)),
                    //Links
                    SizedBox(
                      height: 20.h,
                    ),
                    _links(text: 'Contact Form', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                    _links(text: 'Our Offices', onTap: () {}),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        )

        //Privacy section

        ,
        Container(
          color: AppColor.g10,
          alignment: Alignment.center,
          width: w,
          child: Padding(
            padding: CustomUi.defPadding(hr: 100.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    HoverOver(builder: (isHovered) {
                      return Text(
                        '@2023 Estatein. All Rights Reserved.',
                        style: TextStyle(
                            decoration: isHovered
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationColor: AppColor.white,
                            color: AppColor.w90,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400),
                      );
                    }),
                    SizedBox(
                      width: 20.w,
                    ),
                    HoverOver(builder: (isHovered) {
                      return Text(
                        'Terms & Conditions',
                        style: TextStyle(
                            decoration: isHovered
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationColor: AppColor.white,
                            color: AppColor.w90,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400),
                      );
                    }),
                  ],
                ),
                Row(
                  children: [
                    _icons(assetPath: 'assets/icons/facebook.svg'),
                    _icons(assetPath: 'assets/icons/youtube.svg'),
                    _icons(assetPath: 'assets/icons/linkedin.svg'),
                    _icons(assetPath: 'assets/icons/tiwtter.svg'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  HoverOver _links({required String text, required VoidCallback onTap}) {
    return HoverOver(builder: (isHovered) {
      return GestureDetector(
        onTap: onTap,
        child: Text(text,
            style: CustomUi.defTextStyle(
                height: 1.2,
                fontSize: 22.sp,
                color: isHovered ? AppColor.p60 : AppColor.white,
                fontWeight: FontWeight.w400)),
      );
    });
  }

  Widget _icons({required String assetPath}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: HoverOver(builder: (isHovered) {
        return SizedBox(
          width: 40,
          child: SvgPicture.asset(assetPath),
        );
      }),
    );
  }
}
