import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgButtons extends StatelessWidget {
  const SvgButtons({
    super.key,
    required this.assetPath,
    this.width,
  });
  final double? width;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: HoverOver(builder: (isHovered) {
        return AnimatedScale(
          duration: const Duration(milliseconds: 300),
          scale: isHovered ? 1.2 : 1,
          curve: Curves.bounceInOut,
          child: SizedBox(
            width: width,
            child: SvgPicture.asset(assetPath),
          ),
        );
      }),
    );
  }

  factory SvgButtons.desktop({required String assetPath}) {
    return  SvgButtons(
      assetPath:assetPath,
      width: 60.w,
    );
  }
  factory SvgButtons.tablet({required String assetPath}) {
    return  SvgButtons(
      assetPath:assetPath,
      width: 50.w,
    );
  }
  factory SvgButtons.mobile({required String assetPath}) {
    return  SvgButtons(
      assetPath:assetPath,
      width: 50.w,
    );
  }
}
