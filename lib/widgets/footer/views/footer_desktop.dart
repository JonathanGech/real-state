import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/footer/views/links_botton.dart';
import 'package:real_state/widgets/footer/views/svg_buttons.dart';

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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logo
                  SizedBox(
                    width: 200.w,
                    child: Image.asset('assets/imgs/logo.png'),
                  ),
                 SizedBox(height: 30.sl,),
                  // email text
                  Container(
                    padding: CustomUi.defPadding(vr:0, hr: 20.w),
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
                              width: w * 0.2,
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
                                      vertical: 20.sl, horizontal: 20.w),
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
                                  fit: BoxFit.fill),
                            )),
                      ],
                    ),
                  )
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25.sl,
                children: [
                  // Home
                  Text('Home',
                      style: CustomUi.defTextStyle(
                          height: 1.2,
                          fontSize: 28.sp,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w600)),
                  //Links
                  LinksButton(text: 'Hero Section', onTap: () {}),
              
                  LinksButton(text: 'Features', onTap: () {}),
              
                  LinksButton(text: 'Properties', onTap: () {}),
              
                  LinksButton(text: 'Testimonials', onTap: () {}),
              
                  LinksButton(text: "FAQ's", onTap: () {}),
                ],
              ),
              // About us
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25.sl,
                children: [
                  // Home
                  Text('About Us',
                      style: CustomUi.defTextStyle(
                          height: 1.2,
                          fontSize: 28.sp,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w600)),
                  //Links
              
                  LinksButton(text: 'Our Story', onTap: () {}),
              
                  LinksButton(text: 'Our Works', onTap: () {}),
              
                  LinksButton(text: 'How It Works', onTap: () {}),
              
                  LinksButton(text: 'Our Team', onTap: () {}),
              
                  LinksButton(text: "Our Clients", onTap: () {}),
                ],
              ),
              //Properties
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25.sl,
                children: [
                  Text('Properties',
                      style: CustomUi.defTextStyle(
                          height: 1.2,
                          fontSize: 28.sp,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w600)),
                  //Links

                  LinksButton(text: 'Portfolio', onTap: () {}),
                  LinksButton(text: 'Categories', onTap: () {}),
                 
                ],
              ),
              // Services
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25.sl,
                children: [
                  // Home
                  Text('Services',
                      style: CustomUi.defTextStyle(
                          height: 1.2,
                          fontSize: 28.sp,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w600)),
                  //Links
                  LinksButton(text: 'Valuation Mastery', onTap: () {}),
              
                  LinksButton(text: 'Strategic Marketing', onTap: () {}),
              
                  LinksButton(text: 'Negotiation Wizardry', onTap: () {}),
              
                  LinksButton(text: 'Closing Success', onTap: () {}),
              
                  LinksButton(text: "Property Management", onTap: () {}),
                ],
              ),
              // Contact
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25.sl,
                children: [
                  // Home
                  Text('Contact Us',
                      style: CustomUi.defTextStyle(
                          height: 1.2,
                          fontSize: 28.sp,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w600)),
                  //Links
                  LinksButton(text: 'Contact Form', onTap: () {}),
                  LinksButton(text: 'Our Offices', onTap: () {}),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.sl,
        ),

        //Privacy section
        Container(
          color: AppColor.g10,
          alignment: Alignment.center,
          width: w,
          child: Padding(
            padding: CustomUi.defPadding(hr: 100.w, vr: 20.sl),
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
                    SvgButtons.desktop(assetPath: 'assets/icons/facebook.svg'),
                    SvgButtons.desktop(assetPath: 'assets/icons/youtube.svg'),
                    SvgButtons.desktop(assetPath: 'assets/icons/linkedin.svg'),
                    SvgButtons.desktop(assetPath: 'assets/icons/tiwtter.svg'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
