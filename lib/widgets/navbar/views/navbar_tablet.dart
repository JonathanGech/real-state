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
    return Container(
      padding: CustomUi.defPadding(vr: 15.sl, hr: 80.w),
      decoration: BoxDecoration(
        color: AppColor.g10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.,
        children: [
          // NavbarView(),
          // ========================= Nav section ======================
          Flexible(
            child: SizedBox(
              width: 120.w.clamp(110, 200),
              child: Image.asset(
                'assets/imgs/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(),
          Flexible(
            flex: 3,
            child: BlocBuilder<NavbarBloc, NavbarState>(
              builder: (context, state) {
                state as NavbarInitial;
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...navItems.map((e) {
                      return NavItems.tablet(
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
          ),
          Spacer(),
          Flexible(
            // flex: 2,
            child: AspectRatio(
              aspectRatio: 3.5,
              child: CustomUi.defButton(
                title: matchNavbarItem(NavbarItems.contact),
                radius: 10.w,
                fontSize: 22.sp,
                borderColor: AppColor.g15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Urbanist',
                backgroundColor: AppColor.g8,
                textColor: AppColor.white,
                edgeInsets: EdgeInsets.zero,
                onPressed: () {
                  context.read<NavbarBloc>().add(NavbarInitialEvent(
                      selectedItem: NavbarItems.contact));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}