import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:real_state/components/custom_list_view_builder.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_list_view_controller.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/widgets/feature/views/home_card.dart';
import 'package:real_state/widgets/feature/views/home_card_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCardListView extends StatefulWidget {
  const HomeCardListView({super.key, required this.deviceType});
  final DeviceScreenType deviceType;

  @override
  State<HomeCardListView> createState() => _HomeCardListViewState();
}

class _HomeCardListViewState extends State<HomeCardListView> {
  final _customListViewController = CustomListViewController();
  final List<HomeCardModel> _models = [
    HomeCardModel(
        title: 'SeaSide Serenity Villa',
        description:
            "A stunning 4-bedroom, 3-bathroom villa in a peaceful suburban neighborhood.",
        type: 'Villa',
        price: '\$550,000',
        imgPath: 'assets/imgs/img-1.png',
        bedSize: 4,
        bathSize: 3),
    HomeCardModel(
        title: 'Mountain View Retreat',
        description:
            "A cozy 3-bedroom cabin with breathtaking mountain views and modern amenities.",
        type: 'Cabin',
        price: '\$350,000',
        imgPath: 'assets/imgs/img-2.png',
        bedSize: 3,
        bathSize: 2),
    HomeCardModel(
        title: 'Urban Oasis Apartment',
        description:
            "A luxurious 2-bedroom apartment in the heart of the city, featuring a rooftop pool.",
        type: 'Apartment',
        price: '\$750,000',
        imgPath: 'assets/imgs/img-3.png',
        bedSize: 2,
        bathSize: 2),
    HomeCardModel(
        title: 'Mountain View Retreat',
        description:
            "A cozy 3-bedroom cabin with breathtaking mountain views and modern amenities.",
        type: 'Cabin',
        price: '\$800,000',
        imgPath: 'assets/imgs/img-2.png',
        bedSize: 4,
        bathSize: 2),
    HomeCardModel(
        title: 'Urban Oasis Apartment',
        description:
            "A luxurious 2-bedroom apartment in the heart of the city, featuring a rooftop pool.",
        type: 'Apartment',
        price: '\$1,250,000',
        imgPath: 'assets/imgs/img-3.png',
        bedSize: 6,
        bathSize: 2),
  ];
  late List<HomeCardModel> _fewModels;
  @override
  void initState() {
    super.initState();
    _fewModels = [..._models, ..._models, ..._models];
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.deviceType) {
      case DeviceScreenType.watch:
        // TODO: Handle this case.
        return SizedBox();
      case DeviceScreenType.mobile:
        return SizedBox();
      case DeviceScreenType.tablet:
        return _tablet();
      case DeviceScreenType.desktop:
        return _desktop();
    }
  }

  Widget _desktop() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: (535.w * 3 + 160.w * 2), maxHeight: 650.h, minHeight: 481),
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
                return HomeCard.desktop(homeCardModel: _fewModels[index]);
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
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
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
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
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

  Widget _tablet() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: (600.w * 3 + 160.w * 2), maxHeight: 650.h),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch
            }),
            child: CustomListViewBuilder(
              controller: _customListViewController,
              itemCount: _fewModels.length,
              itemWidth: 600.w,
              viewportExtent: 600.w * 3,
              itemBuilder: (context, index) {
                return HomeCard.tablet(homeCardModel: _fewModels[index]);
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
                          fontSize: 16.sp,
                          color: AppColor.white,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: ' of ${_fewModels.length}',
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: 16.sp,
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
                            _customListViewController.previous(435.w);
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
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
                            _customListViewController.next(435.w);
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
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
