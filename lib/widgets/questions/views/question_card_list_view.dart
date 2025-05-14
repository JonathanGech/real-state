import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/components/custom_list_view_builder.dart';
import 'package:real_state/components/index_controller_view.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_list_view_controller.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/questions/views/question_card.dart';
import 'package:real_state/widgets/questions/views/question_card_model.dart';

class QuestionCardListView extends StatefulWidget {
  const QuestionCardListView({super.key, required this.deviceScreenType});
  final DeviceScreenType deviceScreenType;

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
    _fewModels = [
      ..._models,
      ..._models,
    ];
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.deviceScreenType) {
      case DeviceScreenType.mobile:
        return _mobile();

      case DeviceScreenType.tablet:
        return _tablet();
      case DeviceScreenType.desktop:
        return _desktop();
      case DeviceScreenType.watch:
        return SizedBox();
    }
  }

  Widget _mobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch
            }),
            child: AspectRatio(
              aspectRatio: 1.3,
              child: CustomListViewBuilder(
                controller: _customListViewController,
                itemCount: 5,
                itemWidth: (w - 30.w * 2),
                viewportExtent: (w - 30.w * 2),
                itemBuilder: (context, index) {
                  return QuestionCard.mobile(
                      questionCardModel: _fewModels[index]);
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.sl,
        ),
        const Divider(
          color: AppColor.g15,
          thickness: 1,
        ),
        IndexControllerView.mobile(
            customListViewController: _customListViewController,
            length: _fewModels.length,
            ontap: (v) {},
            buttonText: 'View All FAQ’s',
            onPressed: () {},
            move: (w - 30.w * 2))
      ],
    );
  }
  Widget _tablet() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 3,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch
              }),
              child: CustomListViewBuilder(
                controller: _customListViewController,
                itemCount: _fewModels.length,
                itemWidth: (w - 80.w * 2) / 3,
                viewportExtent: (w - 80.w * 2),
                itemBuilder: (context, index) {
                  return QuestionCard.tablet(
                      questionCardModel: _fewModels[index]);
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.sl,
        ),
        const Divider(
          color: AppColor.g15,
          thickness: 1,
        ),
        IndexControllerView.tablet(
          customListViewController: _customListViewController,
          length: _fewModels.length,
          move: (w - 80.w * 2) / 3,
          ontap: (index) => print(index),
        )
      ],
    );
  }

  Widget _desktop() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 3.5,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch
              }),
              child: CustomListViewBuilder(
                controller: _customListViewController,
                itemCount: _fewModels.length,
                itemWidth: (w - 162.w * 2) / 3,
                viewportExtent: (w - 162.w * 2),
                itemBuilder: (context, index) {
                  return QuestionCard.desktop(
                      questionCardModel: _fewModels[index]);
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.sl,
        ),
        const Divider(
          color: AppColor.g15,
          thickness: 1,
        ),
        IndexControllerView.desktop(
          customListViewController: _customListViewController,
          length: _fewModels.length,
          move: (w - 162.w * 2) / 3,
          ontap: (index) => print(index),
        ),
      ],
    );
  }
}
