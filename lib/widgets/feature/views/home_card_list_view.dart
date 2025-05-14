import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:real_state/components/custom_list_view_builder.dart';
import 'package:real_state/components/index_controller_view.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_list_view_controller.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
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
    _fewModels = [
      ..._models,
      ..._models,
    ];
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.deviceType) {
      case DeviceScreenType.watch:
        // TODO: Handle this case.
        return const SizedBox();
      case DeviceScreenType.mobile:
        return _mobile();
      case DeviceScreenType.tablet:
        return _tablet();
      case DeviceScreenType.desktop:
        return _desktop(context);
    }
  }

  Widget _desktop(BuildContext context) {
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
              aspectRatio: 2.2,
              child: CustomListViewBuilder(
                controller: _customListViewController,
                itemCount: _fewModels.length,
                itemWidth: (w - 162.w * 2) / 3,
                viewportExtent: (w - 162.w * 2),
                itemBuilder: (context, index) {
                  return HomeCard.desktop(homeCardModel: _fewModels[index]);
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

  Widget _tablet() {
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
              aspectRatio: 2.2,
              child: CustomListViewBuilder(
                controller: _customListViewController,
                itemCount: 5,
                itemWidth: (w - 80.w * 2) / 3,
                viewportExtent: (w - 80.w * 2),
                itemBuilder: (context, index) {
                  return HomeCard.tablet(homeCardModel: _fewModels[index]);
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
         IndexControllerView.tablet(
          customListViewController: _customListViewController,
          length: _fewModels.length,
          move: (w - 80.w * 2) / 3,
          ontap: (index) => print(index),
        )
      ],
    );
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
              aspectRatio: 1,
              child: CustomListViewBuilder(
                controller: _customListViewController,
                itemCount: 5,
                itemWidth: (w - 30.w * 2),
                viewportExtent: (w - 30.w * 2),
                itemBuilder: (context, index) {
                  return HomeCard.mobile(homeCardModel: _fewModels[index]);
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
         IndexControllerView.mobile(
            customListViewController: _customListViewController,
            length: _fewModels.length,
            ontap: (v) {},
            buttonText: 'View All Properties',
            onPressed: () {},
            move: (w - 30.w * 2))
      ],
    );
  }
}
