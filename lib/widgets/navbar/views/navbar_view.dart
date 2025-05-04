import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';

class NavbarView extends StatelessWidget {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63.w,
      width: w,
      child: Stack(
        children: [
          SizedBox(
            width: w,
            child: Image.asset(
              'assets/imgs/ab-3.png',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Row(
                children: [
                  Text('Discover Your Dream Property With Estatein ',
                      style: CustomUi.defTextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 22.sp,
                        color: AppColor.white,
                        fontWeight: FontWeight.w300,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Learn more',
                        style: CustomUi.defTextStyle(
                            fontSize: 22.sp,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: AppColor.white,
                            color: AppColor.white,
                            fontWeight: FontWeight.w200),
                      ))
                ],
              ),
              Padding(
                  padding: CustomUi.defPadding(vr: 0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cancel,
                        color: AppColor.white,
                        size: 18,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
