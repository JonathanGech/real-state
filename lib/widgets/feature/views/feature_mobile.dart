import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/feature/views/home_card_list_view.dart';
	  
class FeatureMobile extends StatelessWidget {
	const FeatureMobile({super.key});
@override
 Widget build(BuildContext context) {
    return Padding(
      padding: CustomUi.defPadding(vr: 0, hr: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========================= Icon ======================
          SizedBox(
            width: 50.w.clamp(30, 50),
            child: Image.asset(
              'assets/imgs/icons/more.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // ========================= Title ======================
          Text('Featured Properties',
              style: CustomUi.defTextStyle(
                  height: 1.5,
                  fontSize: 28.sp,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600)),
          // ========================= Description and button ======================
          SizedBox(
            width: w * .8,
            child: Text(
              'Explore our handpicked selection of featured properties. Each listing offers a glimpse into exceptional homes and investments available through Estatein. Click "View Details" for more information.',
              style: CustomUi.defTextStyle(
                  height: 1.5,
                  fontSize: 14.sp,
                  color: AppColor.g60,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          // ========================= List View ======================
          const HomeCardListView(deviceType: DeviceScreenType.mobile,),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}