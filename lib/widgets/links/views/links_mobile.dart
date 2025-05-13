import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/links/views/links_view.dart';
	  
class LinksMobile extends StatelessWidget {
	const LinksMobile({super.key});
	  
	@override
	Widget build(BuildContext context) {
		return  Column(
      children: [
        // ========================= LinksView section ======================
        Container(
          width: w,
          padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(color: AppColor.g15, width: 4),
            boxShadow: const [
              BoxShadow(
                color: AppColor.w90,
                offset:  Offset(0, 2),
                blurRadius: 50,
                spreadRadius: -30,
              )
            ]
          ),
          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: LinksView.mobile(
                        title: 'Find Your Dream Home',
                        assetPath: 'assets/imgs/icons/icon-1.png'),
                  ),
                  Flexible(
                    child: LinksView.mobile(
                        title: 'Unlock Property Value',
                        assetPath: 'assets/imgs/icons/icon-2.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: LinksView.mobile(
                        title: 'Effertless Property Management',
                        assetPath: 'assets/imgs/icons/icon-3.png'),
                  ),
                  Flexible(
                    child: LinksView.mobile(
                        title: 'Smart Investment Informed Decisions',
                        assetPath: 'assets/imgs/icons/icon-1.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        )
      ],
    );
  }
	}
