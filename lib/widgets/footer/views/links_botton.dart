import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';

class LinksButton extends StatelessWidget {
  const LinksButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return HoverOver(builder: (isHovered) {
      return GestureDetector(
        onTap: onTap,
        child: Text(text,
            style: CustomUi.defTextStyle(
                height: 1.2,
                fontSize: 22.sp,
                color: isHovered ? AppColor.p60 : AppColor.white,
                fontWeight: FontWeight.w400)),
      );
    });
  }
}