import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/components/custom_list_view_builder.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_list_view_controller.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/questions/views/question_card.dart';
import 'package:real_state/widgets/questions/views/question_card_model.dart';

class QuestionCardListView extends StatefulWidget {
  const QuestionCardListView({super.key});

  @override
  State<QuestionCardListView> createState() => _QuestionCardListViewState();
}

class _QuestionCardListViewState extends State<QuestionCardListView> {
  final _customListViewController = CustomListViewController();
  final List<QuestionCardModel> _models = [
    QuestionCardModel(
        title: "How do I search for properties on Estatein?",
        description:
            'Learn how to use our user-friendly search tools to find properties that match your criteria.',
        onTap: () {}),
    QuestionCardModel(
        title: "What types of properties are available?",
        description:
            'Explore the various types of properties we offer, including residential, commercial, and land listings.',
        onTap: () {}),
    QuestionCardModel(
        title: "How can I schedule a property viewing?",
        description:
            'Find out how to schedule a viewing for a property you are interested in.',
        onTap: () {}),
    QuestionCardModel(
        title: "What is the process for making an offer?",
        description:
            'Understand the steps involved in making an offer on a property.',
        onTap: () {}),
    QuestionCardModel(
        title: "How do I get pre-approved for a mortgage?",
        description:
            'Learn about the pre-approval process and how it can benefit you.',
        onTap: () {}),
    QuestionCardModel(
        title: "What are the closing costs?",
        description:
            'Get information on the various closing costs associated with buying a property.',
        onTap: () {}),
  ];
  late List<QuestionCardModel> _fewModels;
  @override
  void initState() {
    super.initState();
    _fewModels = [..._models, ..._models, ..._models];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 535.w * 3 + 162.w * 2,
          height: 430.h,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch
            }),
            child: CustomListViewBuilder(
              controller: _customListViewController,
              itemCount: _fewModels.length,
              itemWidth: 535.w,
              viewportExtent: 535.w * 3,
              itemBuilder: (context, index) {
                return QuestionCard(questionCardModel: _fewModels[index]);
              },
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        const Divider(
          color: AppColor.g15,
          thickness: 1,
        ),
        AnimatedBuilder(
          animation: _customListViewController,
          builder: (__, ___) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          _customListViewController.visibleItemCount.toString(),
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: 22.sp,
                          color: AppColor.white,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: ' of ${_fewModels.length}',
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: 22.sp,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w400),
                    )
                  ]),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.g10,
                          border: Border.all(color: AppColor.g15, width: 1),
                          shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {
                          if (_customListViewController.canGoPrevious) {
                            _customListViewController.previous(535.w);
                          }
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: _customListViewController.canGoPrevious
                            ? AppColor.white
                            : AppColor.g60,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.g10,
                          border: Border.all(color: AppColor.g15, width: 1),
                          shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {
                          if (_customListViewController.canGoNext) {
                            _customListViewController.next(535.w);
                          }
                        },
                        icon: const Icon(Icons.arrow_forward),
                        color: _customListViewController.canGoNext
                            ? AppColor.white
                            : AppColor.g60,
                      ),
                    ),
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
