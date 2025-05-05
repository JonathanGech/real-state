import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_bloc.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_event.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_items.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_state.dart';
import 'package:real_state/widgets/navbar/views/nav_items.dart';
import 'package:real_state/widgets/navbar/views/navbar_view.dart';
	  
class NavbarTablet extends StatelessWidget {
	const NavbarTablet({super.key});
	  
final List<NavbarItems> navItems = const [
    NavbarItems.home,
    NavbarItems.about,
    NavbarItems.property,
    NavbarItems.services,
  ];

  String matchNavbarItem(NavbarItems item) {
    switch (item) {
      case NavbarItems.home:
        return 'Home';
      case NavbarItems.about:
        return 'About us';
      case NavbarItems.services:
        return 'Services';
      case NavbarItems.contact:
        return 'Contact';
      case NavbarItems.property:
        return 'Properties';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavbarView(),

        // ========================= Nav section ======================
        Container(
          height: 99.w,
          width: w,
          padding: CustomUi.defPadding(vr: 14.h, hr: 80.w),
          decoration: BoxDecoration(
            color: AppColor.g10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 160.w,
                child: Image.asset(
                  'assets/imgs/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              BlocBuilder<NavbarBloc, NavbarState>(
                builder: (context, state) {
                  state as NavbarInitial;
                  return Row(
                    children: [
                      ...navItems.map((e) {
                        return NavItems(
                          text: matchNavbarItem(e),
                          selected: state.selectedItem == e,
                          ontap: () {
                            context
                                .read<NavbarBloc>()
                                .add(NavbarInitialEvent(selectedItem: e));
                          },
                        );
                      }),
                    ],
                  );
                },
              ),
              CustomUi.defButton(
                title: matchNavbarItem(NavbarItems.contact),
                radius: 8.w,
                fontSize: 12.sp,
                borderColor: AppColor.g15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Urbanist',
                backgroundColor: AppColor.g8,
                textColor: AppColor.white,
                edgeInsets: CustomUi.defPadding(vr: 16.w, hr: 24.w),
                onPressed: () {
                  context.read<NavbarBloc>().add(
                      NavbarInitialEvent(selectedItem: NavbarItems.contact));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}