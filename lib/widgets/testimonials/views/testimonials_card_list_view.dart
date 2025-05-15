import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/components/custom_list_view_builder.dart';
import 'package:real_state/components/index_controller_view.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_list_view_controller.dart';
import 'package:real_state/utils/responsive_builder.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/testimonials/views/testimonial_card.dart';
import 'package:real_state/widgets/testimonials/views/testimonial_card_model.dart';

class TestimonialsCardListView extends StatefulWidget {
  const TestimonialsCardListView({super.key, required this.deviceType});
  final DeviceScreenType deviceType;

  @override
  State<TestimonialsCardListView> createState() =>
      _TestimonialsCardListViewState();
}

class _TestimonialsCardListViewState extends State<TestimonialsCardListView> {
  final _customListViewController = CustomListViewController();
  final List<TestimonialCardModel> _models = [
    TestimonialCardModel(
        fullName: 'Wade Warren',
        title: 'Exceptional Service!',
        description:
            "Our experience with Estatein was outstanding. Their team's dedication and professionalism made finding our dream home a breeze. Highly recommended!",
        location: 'USA, California',
        imgPath:
            'https://images.unsplash.com/photo-1560250097-0b93528c311a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ratingCount: 5),
    TestimonialCardModel(
        fullName: 'Jane Cooper',
        title: 'Highly Professional!',
        description:
            "The team at Estatein was incredibly professional and attentive to our needs. They made the entire process seamless and enjoyable.",
        location: 'UK, London',
        imgPath:
            'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ratingCount: 5),
    TestimonialCardModel(
        fullName: 'Robert Fox',
        title: 'Amazing Experience!',
        description:
            "From start to finish, Estatein provided an amazing experience. Their expertise and dedication were evident throughout.",
        location: 'Canada, Toronto',
        imgPath:
            'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ratingCount: 5),
    TestimonialCardModel(
        fullName: 'Emily Johnson',
        title: 'Highly Recommended!',
        description:
            "I couldn't be happier with the service provided by Estatein. They truly went above and beyond to help us find the perfect home.",
        location: 'Australia, Sydney',
        imgPath:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ratingCount: 5),
    TestimonialCardModel(
        fullName: 'Sophia Lee',
        title: 'Fantastic Support!',
        description:
            "The support we received from Estatein was fantastic. They were always available to answer our questions and guide us through the process.",
        location: 'Singapore',
        imgPath:
            'https://images.unsplash.com/photo-1517841905240-472988babdf9?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ratingCount: 4),
    TestimonialCardModel(
        fullName: 'Michael Brown',
        title: 'Outstanding Service!',
        description:
            "Estatein exceeded our expectations in every way. Their attention to detail and commitment to excellence were truly outstanding.",
        location: 'Germany, Berlin',
        imgPath:
            'https://images.unsplash.com/photo-1502767089025-6572583495b0?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ratingCount: 4),
  ];
  late List<TestimonialCardModel> _fewModels;
  @override
  void initState() {
    super.initState();
    _fewModels = [..._models, ..._models,];
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.deviceType) {
      case DeviceScreenType.watch:
        return const SizedBox();
      case DeviceScreenType.mobile:
        return _mobile();
      case DeviceScreenType.tablet:
        return _tablet();
      case DeviceScreenType.desktop:
        return _deskTop();
    }
  }

  Widget _deskTop(){
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
                itemWidth:  (w - 162.w * 2) / 3,
                viewportExtent:  (w - 162.w * 2),
                itemBuilder: (context, index) {
                  return TestimonialCard.desktop(testimonialCardModel: _fewModels[index]);
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

  Widget _tablet(){
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
                viewportExtent:  (w - 80.w * 2),
                itemBuilder: (context, index) {
                  return TestimonialCard.tablet(testimonialCardModel: _fewModels[index]);
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
                  return TestimonialCard.mobile(
                      testimonialCardModel: _fewModels[index]);
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
}
