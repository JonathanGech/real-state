import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
// import 'package:real_state/widgets/navbar/bloc/navbar_bloc.dart';
// import 'package:real_state/widgets/navbar/bloc/navbar_event.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_items.dart';
// import 'package:real_state/widgets/navbar/bloc/navbar_state.dart';
// import 'package:real_state/widgets/navbar/views/nav_items.dart';
	  
class NavbarMobile extends StatelessWidget {
	const NavbarMobile({super.key});
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
      padding: CustomUi.defPadding(vr: 15.sl, hr: 30.w),
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
              width: 160.w.clamp(110, 200),
              child: Image.asset(
                'assets/imgs/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(),
         IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: AppColor.white,))
        ],
      ),
    );
	}
}