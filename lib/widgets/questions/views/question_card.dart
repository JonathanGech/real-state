import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/questions/views/question_card_model.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.questionCardModel});
  final QuestionCardModel questionCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: HoverOver(builder: (ishovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 525.w,
          padding: CustomUi.defPadding(vr: 40.h, hr: 30.w),
          decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(
                color: ishovered ? AppColor.p60 : AppColor.g15,
                width: ishovered ? 3 : 1),
            borderRadius: CustomUi.radiusCircular(radius: 12.w),
            boxShadow: ishovered
                ? [
                    BoxShadow(
                      color: AppColor.w90.withValues(alpha: .4),
                      blurRadius: 20,
                      spreadRadius: -10,
                      offset: const Offset(0, 5),
                    ),
                  ]
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionCardModel.title,
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 28.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                questionCardModel.description,
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 22.sp,
                    color: AppColor.g60,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              CustomUi.defButton(
                  title: 'Read More',
                  onPressed: questionCardModel.onTap,
                  radius: 10.w,
                  fontSize: 22.sp,
                  edgeInsets: CustomUi.defPadding(vr: 18.h, hr: 24.w),
                  borderColor: AppColor.g15,
                  fontWeight: FontWeight.w500,
                  backgroundColor: AppColor.g10),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        );
      }),
    );
  }
}
