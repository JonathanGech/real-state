import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/body/views/info.dart';
	  
class BodyMobile extends StatelessWidget {
	const BodyMobile({super.key});
	  
	@override
	Widget build(BuildContext context) {
		return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ========================= Discover section ======================
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20.sl,  horizontal: 20.sl, ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Discover Your Dream Property with Estateing',
                  style: CustomUi.defTextStyle(
                      height: 1.2,
                      fontSize: 60.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white)),
              SizedBox(
                height: 24.sl,
              ),
              Text(
                'Your journey to finding the perfect property begins here. Explore our listings to find the home that matches your dreams.',
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.g60),
              ),
              SizedBox(
                height: 50.sl,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 3,
                    child: AspectRatio(
                      aspectRatio: 3.5,
                      child: CustomUi.defButton(
                        title: 'Learn More',
                        radius: 10.w,
                        fontSize: 22.sp,
                        borderColor: AppColor.g15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Urbanist',
                        backgroundColor: AppColor.g10,
                        textColor: AppColor.white,
                        edgeInsets:
                           EdgeInsets.zero,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.sl,
                  ),
                  Flexible(
                    flex: 3,
                    child: AspectRatio(
                      aspectRatio: 3.5,
                      child: CustomUi.defButton(
                        title: 'Browse Properties',
                        radius: 10.w,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        borderColor: Colors.transparent,
                        fontFamily: 'Urbanist',
                        backgroundColor: AppColor.p60,
                        textColor: AppColor.white,
                        edgeInsets: EdgeInsets.zero,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.sl,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Info.mobile(title: '200+', subtitle: 'Happy Clients'),
                  Info.mobile(
                      title: '10k+',
                      subtitle: 'Properties for Clients'),
                  Info.mobile(
                      title: '16+',
                      subtitle: 'Years of Experience'),
                ],
              )
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment(0.1.sl, -0.9.sl),
        //   child: Image.asset('assets/imgs/logo-center.png',
        //       width: 170.sl, fit: BoxFit.fill),
        // ),

      ],
    );
	}
}