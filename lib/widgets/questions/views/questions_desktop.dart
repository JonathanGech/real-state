import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/questions/views/question_card_list_view.dart';

class QuestionsDesktop extends StatelessWidget {
  const QuestionsDesktop({super.key});

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
              // ========================= Icon ======================
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
              // ========================= Title ======================
              Text('Frequently Asked Questions',
                  style: CustomUi.defTextStyle(
                      height: 1.5,
                      fontSize: 48.sp,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600)),
              // ========================= Description and button ======================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 1200.w,
                      child: Text(
                        "Find answers to common questions about Estatein's services, property listings, and the real estate process. We're here to provide clarity and assist you every step of the way.",
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 22.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w400),
                      )),
                  const Spacer(),
                  Flexible(
                    child: AspectRatio(
                      aspectRatio: 3.5,
                      child: CustomUi.defButton(
                        title: 'View All FAQ’s',
                        onPressed: () {},
                        radius: 10.w,
                        fontSize: 22.sp,
                        borderColor: AppColor.g15,
                        fontWeight: FontWeight.w500,
                        backgroundColor: AppColor.g10,
                        textColor: AppColor.white,
                        edgeInsets: EdgeInsets.zero,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60.sl,
              ),
              // ========================= List View ======================
              const QuestionCardListView(deviceScreenType: DeviceScreenType.desktop,),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        )
      ],
    );
  }
}
