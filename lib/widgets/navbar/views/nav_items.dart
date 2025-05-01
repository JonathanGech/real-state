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
      required this.ontap});
  final String text;
  final bool selected;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: HoverOver(builder: (ishover) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            padding: CustomUi.defPadding(vr: 14.h, hr: 24.w),
            decoration: BoxDecoration(
              color: selected ? AppColor.g8 : AppColor.g10,
              borderRadius: CustomUi.radiusCircular(radius: 10.w),
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
                  fontSize: ishover ? 18.sp : 16.sp, color: AppColor.white),
            ),
          ),
        );
      }),
    );
  }
}
