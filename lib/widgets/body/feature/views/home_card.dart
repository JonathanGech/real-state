import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/widgets/body/feature/views/home_card_model.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.homeCardModel});
  final HomeCardModel homeCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 525.w,
        padding: CustomUi.defPadding(vr: 40.h, hr: 30.w),
        decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(color: AppColor.g15, width: 1),
            borderRadius: CustomUi.radiusCircular(radius: 12.w)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.w),
              child: Image.asset(
                homeCardModel.imgPath,
                fit: BoxFit.cover,
                width: 465.w,
                height: 318.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(homeCardModel.title,
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 24.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w600)),
            Wrap(
              direction: Axis.horizontal,
              spacing: 1,
              runAlignment: WrapAlignment.end,
              runSpacing: 5,
              children: [
                Text(homeCardModel.description,
                    softWrap: true,
                    style: CustomUi.defTextStyle(
                        height: 1.5,
                        fontSize: 18.sp,
                        color: AppColor.g60,
                        fontWeight: FontWeight.w400)),
                TextButton(
                  onPressed: () {},
                  child: Text('Read More',
                      style: CustomUi.defTextStyle(
                          height: 1.5,
                          fontSize: 18.sp,
                          color: AppColor.p70,
                          fontWeight: FontWeight.w400)),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _infoHome(
                    title: '${homeCardModel.bedSize}-Bedrooms',
                    assetPath: 'assets/icons/bed.svg'),
                _infoHome(
                    title: '${homeCardModel.bathSize}-Bathroom',
                    assetPath: 'assets/icons/bathroom.svg'),
                _infoHome(
                    title: homeCardModel.type,
                    assetPath: 'assets/icons/villa.svg')
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price',
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 18.sp,
                            color: AppColor.g60,
                            fontWeight: FontWeight.w400)),
                    Text(homeCardModel.price,
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: 24.sp,
                            color: AppColor.white,
                            fontWeight: FontWeight.w600))
                  ],
                ),
                const Spacer(),
                CustomUi.defButton(
                  title: 'View Property Details',
                  onPressed: () {},
                  radius: 10.w,
                  fontSize: 18.sp,
                  borderColor: Colors.transparent,
                  fontWeight: FontWeight.w500,
                  backgroundColor: AppColor.p60,
                  textColor: AppColor.white,
                  edgeInsets: CustomUi.defPadding(vr: 18.h, hr: 24.w),
                ),
              ],
            ),
            SizedBox(
              height: 20.w,
            )
          ],
        ),
      ),
    );
  }

  ConstrainedBox _infoHome({required String title, required String assetPath}) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 150.w),
      child: Container(
        padding: CustomUi.defPadding(hr: 10.w, vr: 8.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.g10,
            border: Border.all(color: AppColor.g15, width: 1),
            borderRadius: CustomUi.radiusCircular(radius: 24.w)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 17.w,
              child: SvgPicture.asset(
                assetPath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(title,
                overflow: TextOverflow.ellipsis,
                style: CustomUi.defTextStyle(
                    height: 1.5,
                    fontSize: 16.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
