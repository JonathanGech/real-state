import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/questions/views/question_card_list_view.dart';
	  
class QuestionsMobile extends StatelessWidget {
	const QuestionsMobile({super.key});
	  
	@override
	Widget build(BuildContext context) {
		return Padding(
		  padding: CustomUi.defPadding(vr: 0, hr: 30.w),
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
		      Text('Frequently Asked Questions',
		          style: CustomUi.defTextStyle(
		              height: 1.5,
		              fontSize: 38.sp,
		              color: AppColor.white,
		              fontWeight: FontWeight.w600)),
		      // ========================= Description and button ======================
		      SizedBox(
		          width:  w * .8,
		          child: Text(
		            "Find answers to common questions about Estatein's services, property listings, and the real estate process. We're here to provide clarity and assist you every step of the way.",
		            style: CustomUi.defTextStyle(
		                height: 1.5,
		                fontSize: 16.sp,
		                color: AppColor.g60,
		                fontWeight: FontWeight.w400),
		          )),
		      // ========================= List View ======================
		         SizedBox(
            height: 40.sl,
          ),
          const QuestionCardListView(deviceScreenType: DeviceScreenType.mobile,),
		      SizedBox(
		        height: 20.h,
		      )
		    ],
		  ),
		);
	}
}