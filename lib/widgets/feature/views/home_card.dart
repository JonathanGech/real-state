import 'package:dev_utils/widgets/hover_over.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';
import 'package:real_state/widgets/feature/views/home_card_model.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.homeCardModel,
      required this.paddingContianer,
      required this.radius,
      this.titleFs,
      this.fontsize,
      required this.edgeInsets});
  final HomeCardModel homeCardModel;
  final EdgeInsets paddingContianer;
  final BorderRadius radius;
  final double? titleFs;
  final double? fontsize;
  final EdgeInsets edgeInsets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: HoverOver(builder: (ishoverd) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: edgeInsets,
          decoration: BoxDecoration(
            color: AppColor.g8,
            border: Border.all(
                color: ishoverd ? AppColor.p60 : AppColor.g15,
                width: ishoverd ? 3 : 1),
            borderRadius: radius,
            boxShadow: ishoverd
                ? [
                    BoxShadow(
                      color: AppColor.w90.withValues(alpha: .4),
                      blurRadius: 20,
                      spreadRadius: -10,
                      offset: const Offset(0, 5),
                    ),
                  ]
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // shrinkWrap: true,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                // constraints:
                //     BoxConstraints(maxHeight: 100, minWidth: 200 - 30.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.w),
                  child: Image.asset(
                    homeCardModel.imgPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.sl,
              ),
              Text(homeCardModel.title,
                  style: CustomUi.defTextStyle(
                      height: 1.5,
                      fontSize: titleFs,
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
                          fontSize: fontsize,
                          color: AppColor.g60,
                          fontWeight: FontWeight.w400)),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10.sl, vertical: 5.sl),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      alignment: Alignment.center,
                      // backgroundColor: AppColor.p60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      ),
                    onPressed: () {},
                    child: Text('Read More',
                        style: CustomUi.defTextStyle(
                            height: 1.5,
                            fontSize: fontsize,
                            color: AppColor.p70,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const Spacer(),
              // SizedBox(height: 20.sl,),
              SizedBox(
                height: 50.sl,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  // runAlignment: WrapAlignment.spaceAround,
                  // crossAxisAlignment: WrapCrossAlignment.start,
                  // runSpacing: 5,
                  children: [
                    _infoHome(
                      context: context,
                        title: '${homeCardModel.bedSize}-Bedrooms',
                        widget: SvgPicture.asset('assets/icons/bed.svg' ,width: 25.sl, fit: BoxFit.fill,)),
                    _infoHome(
                      context: context,
                        title: '${homeCardModel.bathSize}-Bathroom',
                        widget: SvgPicture.asset('assets/icons/bathroom.svg', width: 25.sl,fit: BoxFit.fill,)),
                    _infoHome(
                      context: context,
                        title: homeCardModel.type,
                        widget: SvgPicture.asset('assets/icons/villa.svg' ,width: 25.sl, fit: BoxFit.fill))
                  ],
                ),
              ),
              const Spacer(), // SizedBox(height: 25.sl,),
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
                              fontSize: fontsize,
                              color: AppColor.g60,
                              fontWeight: FontWeight.w400)),
                      Text(homeCardModel.price,
                          style: CustomUi.defTextStyle(
                              height: 1.5,
                              fontSize: titleFs,
                              color: AppColor.white,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  const Spacer(flex: 1,),
                  Flexible(
                    flex: 3,
                    child: AspectRatio(
                      aspectRatio: 3.5,
                      child: CustomUi.defButton(
                        title: 'View Property Details',
                        onPressed: () {},
                        radius: 10.w,
                        fontSize: fontsize,
                        borderColor: Colors.transparent,
                        fontWeight: FontWeight.w500,
                        backgroundColor: AppColor.p60,
                        textColor: AppColor.white,
                        
                        edgeInsets: EdgeInsets.symmetric(horizontal: 5.sl, vertical: 5.sl),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _infoHome({
    required BuildContext context,
    required String title,
    required Widget widget,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: IntrinsicWidth(

        child: IntrinsicHeight(
          child: Container(
            padding: CustomUi.defPadding(hr: 8.sl, vr: 8.sl),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.g10,
                border: Border.all(color: AppColor.g15, width: 1),
                borderRadius: CustomUi.radiusCircular(radius: 24.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                widget,
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
        ),
      ),
    );
  }

//
  factory HomeCard.desktop({required HomeCardModel homeCardModel}) {
    return HomeCard(
        homeCardModel: homeCardModel,
        edgeInsets: CustomUi.defPadding(vr: 40.sl, hr: 30.sl),
        paddingContianer: CustomUi.defPadding(vr: 18.sl, hr: 24.sl),
        radius: CustomUi.radiusCircular(radius: 12.w),
        fontsize: 22.sp,
        titleFs: 28.sp);
  }
  factory HomeCard.tablet({required HomeCardModel homeCardModel}) {
    return HomeCard(
        homeCardModel: homeCardModel,
        edgeInsets: CustomUi.defPadding(vr: 30.sl, hr: 20.sl),
        paddingContianer: CustomUi.defPadding(vr: 16.sl, hr: 20.sl),
        radius: CustomUi.radiusCircular(radius: 12.r),
        fontsize: 16.sp,
        titleFs: 20.sp);
  }
  factory HomeCard.mobile({required HomeCardModel homeCardModel}) {
    return HomeCard(
        homeCardModel: homeCardModel,
        edgeInsets: CustomUi.defPadding(vr: 24.sl, hr: 24.sl),
        paddingContianer: CustomUi.defPadding(vr: 16.sl, hr: 20.sl),
        radius: CustomUi.radiusCircular(radius: 10.r),
        fontsize: 14.sp,
        titleFs: 18.sp);
  }
}


// AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
         
//           padding: edgeInsets,
//           decoration: BoxDecoration(
//             color: AppColor.g8,
//             border: Border.all(
//                 color: ishoverd ? AppColor.p60 : AppColor.g15,
//                 width: ishoverd ? 3 : 1),
//             borderRadius: radius,
//             boxShadow: ishoverd
//                 ? [
//                     BoxShadow(
//                       color: AppColor.w90.withValues(alpha: .4),
//                       blurRadius: 20,
//                       spreadRadius: -10,
//                       offset: const Offset(0, 5),
//                     ),
//                   ]
//                 : null,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               AspectRatio(
//                 aspectRatio: 16/9,
//                 // constraints:
//                 //     BoxConstraints(maxHeight: 100, minWidth: 200 - 30.w),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10.w),
//                   child: Image.asset(
//                     homeCardModel.imgPath,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               Text(homeCardModel.title,
//                   style: CustomUi.defTextStyle(
//                       height: 1.5,
//                       fontSize: titleFs,
//                       color: AppColor.white,
//                       fontWeight: FontWeight.w600)),
//               Wrap(
//                 direction: Axis.horizontal,
//                 spacing: 1,
//                 runAlignment: WrapAlignment.end,
                
//                 runSpacing: 5,
//                 children: [
//                   Text(homeCardModel.description,
//                       softWrap: true,
//                       style: CustomUi.defTextStyle(
//                           height: 1.5,
//                           fontSize: fontsize,
//                           color: AppColor.g60,
//                           fontWeight: FontWeight.w400)),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text('Read More',
//                         style: CustomUi.defTextStyle(
//                             height: 1.5,
//                             fontSize: fontsize,
//                             color: AppColor.p70,
//                             fontWeight: FontWeight.w400)),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _infoHome(
//                       title: '${homeCardModel.bedSize}-Bedrooms',
//                       assetPath: 'assets/icons/bed.svg'),
//                   _infoHome(
//                       title: '${homeCardModel.bathSize}-Bathroom',
//                       assetPath: 'assets/icons/bathroom.svg'),
//                   _infoHome(
//                       title: homeCardModel.type,
//                       assetPath: 'assets/icons/villa.svg')
//                 ],
//               ),
//               const Spacer(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Price',
//                           style: CustomUi.defTextStyle(
//                               height: 1.5,
//                               fontSize: fontsize,
//                               color: AppColor.g60,
//                               fontWeight: FontWeight.w400)),
//                       Text(homeCardModel.price,
//                           style: CustomUi.defTextStyle(
//                               height: 1.5,
//                               fontSize: titleFs,
//                               color: AppColor.white,
//                               fontWeight: FontWeight.w600))
//                     ],
//                   ),
//                   const Spacer(),
//                   CustomUi.defButton(
//                     title: 'View Property Details',
//                     onPressed: () {},
//                     radius: 10.w,
//                     fontSize: fontsize,
//                     borderColor: Colors.transparent,
//                     fontWeight: FontWeight.w500,
//                     backgroundColor: AppColor.p60,
//                     textColor: AppColor.white,
//                     edgeInsets: paddingContianer,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10.h,
//               )
//             ],
//           ),
//         );