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
      this.edgeInsets,
      this.radius, this.fontSize});
  final String text;
  final bool selected;
  final EdgeInsets? edgeInsets;
  final BorderRadius? radius;
  final double? fontSize;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: HoverOver(builder: (ishover) {
        return Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            padding: edgeInsets,
            decoration: BoxDecoration(
              color: selected ? AppColor.g8 : AppColor.g10,
              borderRadius:radius,
              border: selected
                  ? Border.all(
                      color: AppColor.g15,
                      width: 1,
                    )
                  : null,
            ),
            child: Text(
              text,
              style: CustomUi.defTextStyle(
                  fontSize: ishover ? (fontSize ?? 0).sp : ((8 / 9) * (fontSize ?? 0)).sp, color: AppColor.white),
            ),
          ),
        );
      }),
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
      edgeInsets: CustomUi.defPadding(vr: 14.h, hr: 24.w),
      radius:  CustomUi.radiusCircular(radius: 10.w),
      fontSize: 18,
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
      edgeInsets: CustomUi.defPadding(vr: 12.h, hr: 20.w),
      radius:  CustomUi.radiusCircular(radius: 8.w),
      fontSize: 14,
    );
  }
}
