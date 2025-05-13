import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/questions/views/question_card_model.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard(
      {super.key,
      required this.questionCardModel,
      required this.flex,
      required this.titleFs,
      required this.descriptionFs, required this.aspectRatio});
  final QuestionCardModel questionCardModel;
  final int flex;
  final double titleFs;
  final double descriptionFs;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: HoverOver(builder: (ishovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          // padding: CustomUi.defPadding(vr: 20.h, hr: 10.w),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  questionCardModel.title,
                  textAlign: TextAlign.center,
                  style: CustomUi.defTextStyle(
                      height: 1.5,
                      fontSize: titleFs,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30.sl,
                ),
                Text(
                  questionCardModel.description,
                  textAlign: TextAlign.center,
                  style: CustomUi.defTextStyle(
                      height: 1.5,
                      fontSize: descriptionFs,
                      color: AppColor.g60,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Row(
                  children: [
                    Spacer(), //12.5
                    Flexible( //75
                      flex: flex,
                      child: AspectRatio(
                        aspectRatio: aspectRatio,
                        child: CustomUi.defButton(
                            title: 'Read More',
                            onPressed: questionCardModel.onTap,
                            radius: 10.w,
                            fontSize: 22.sp,
                            edgeInsets: EdgeInsets.zero,
                            borderColor: AppColor.g15,
                            fontWeight: FontWeight.w500,
                            backgroundColor: AppColor.g10),
                      ),
                    ),
                    Spacer(flex: 1,)
                  ],
                ),
                 SizedBox(
                  height: 10.sl,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  factory QuestionCard.desktop({required QuestionCardModel questionCardModel}) {
    return QuestionCard(questionCardModel: questionCardModel, 
        flex: 3,
        titleFs: 28.sp,
        descriptionFs: 22.sp,
        aspectRatio: 3.5);
  }
  factory QuestionCard.tablet({required QuestionCardModel questionCardModel}) {
    return QuestionCard(questionCardModel: questionCardModel, 
        flex: 3,
        titleFs: 28.sp,
        descriptionFs: 22.sp,
        aspectRatio: 3.5);
  }
}
