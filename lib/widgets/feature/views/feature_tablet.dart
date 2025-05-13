import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/widgets/feature/views/home_card_list_view.dart';
	  
class FeatureTablet extends StatefulWidget {
	const FeatureTablet({super.key});

  @override
  State<FeatureTablet> createState() => _FeatureTabletState();
}

class _FeatureTabletState extends State<FeatureTablet> {
@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: CustomUi.defPadding(vr: 0, hr: 80.w),
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
                      fontSize: 38.sp,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600)),
              // ========================= Description and button ======================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 975.w,
                      child: Text(
                        'Explore our handpicked selection of featured properties. Each listing offers a glimpse into exceptional homes and investments available through Estatein. Click "View Details" for more information.',
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 16.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w400),
                      )),
                  const Spacer(),
                  Flexible(
                    flex: 3,
                    child: AspectRatio(
                      aspectRatio:  3.5,
                      child: CustomUi.defButton(
                        title: 'View all Properties',
                        onPressed: () {},
                        radius: 8.w,
                        fontSize: 14.sp,
                        borderColor: AppColor.g15,
                        fontWeight: FontWeight.w500,
                        backgroundColor: AppColor.g10,
                        textColor: AppColor.white,
                        edgeInsets: CustomUi.defPadding(vr: 14.h, hr: 20.w),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              // ========================= List View ======================
              const HomeCardListView(deviceType: DeviceScreenType.tablet,),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        )
      ],
    );
  }
}