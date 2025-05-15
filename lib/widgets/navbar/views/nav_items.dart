import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavItems extends StatelessWidget {
  const NavItems(
      {super.key,
      required this.text,
      required this.selected,
      required this.ontap,
      required this.fontSize});
  final String text;
  final bool selected;
  final double fontSize;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AspectRatio(
        aspectRatio: 3,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: MouseRegion(
            cursor:SystemMouseCursors.click,
            child: GestureDetector(
              onTap: ontap,
              child: HoverOver(builder: (ishover) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selected ? AppColor.g15 : AppColor.g10,
                    borderRadius: BorderRadius.circular(12.r),
                    border: selected
                        ? Border.all(
                            color: AppColor.p60,
                            width: 1,
                          )
                        : null,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  10.0),
                    child: Text(
                      text,
                      style: CustomUi.defTextStyle(
                          fontSize:  ishover? (8/9)* fontSize: fontSize , color: selected? AppColor.white: AppColor.w90, fontWeight: ishover? (selected? FontWeight.w500: FontWeight.w400 ): FontWeight.w400 ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  factory NavItems.desktop(
      {required String text,
      required bool selected,
      required VoidCallback ontap}) {
    return NavItems(
      text: text,
      selected: selected,
      ontap: ontap,
      fontSize: 24.sp,
    );
  }

  factory NavItems.tablet(
      {required String text,
      required bool selected,
      required VoidCallback ontap}) {
    return NavItems(
      text: text,
      selected: selected,
      ontap: ontap,
      fontSize: 16.sp,
    );
  }
  
  factory NavItems.mobile(
      {required String text,
      required bool selected,
      required VoidCallback ontap}) {
    return NavItems(
      text: text,
      selected: selected,
      ontap: ontap,
      fontSize: 16.sp,
    );
  }
}
