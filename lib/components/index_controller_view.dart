import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/utils/app_colors.dart';
import 'package:real_state/utils/custom_list_view_controller.dart';
import 'package:real_state/utils/custom_ui.dart';
import 'package:real_state/utils/size.dart';

class IndexControllerView extends StatefulWidget {
  final CustomListViewController customListViewController;
  final int length;
  final void Function(int)? ontap;
  final void Function()? onPressed;
  final double move;
  final double fontSize;
  final bool showButton;
  final String? buttonText;

  const IndexControllerView(
      {super.key,
      required this.customListViewController,
      required this.length,
      this.ontap,
      required this.move,
      required this.fontSize,
      this.onPressed,
      this.showButton = false, this.buttonText});

  @override
  State<IndexControllerView> createState() => _IndexControllerViewState();

  factory IndexControllerView.desktop({
    required CustomListViewController customListViewController,
    required int length,
    required void Function(int) ontap,
    required double move,
  }) {
    return IndexControllerView(
      customListViewController: customListViewController,
      length: length,
      ontap: ontap,
      onPressed: () {},
      move: move,
      fontSize: 22.sp,
      showButton: false,
    );
  }

  factory IndexControllerView.tablet({
    required CustomListViewController customListViewController,
    required int length,
    required void Function(int) ontap,
    required double move,
  }) {
    return IndexControllerView(
      customListViewController: customListViewController,
      length: length,
      ontap: ontap,
      onPressed: () {},
      move: move,
      fontSize: 16.sp,
      showButton: false,
    );
  }

  factory IndexControllerView.mobile({
    required CustomListViewController customListViewController,
    required int length,
    required void Function(int) ontap,
    required String buttonText,
    required void Function() onPressed,
    required double move,
  }) {
    return IndexControllerView(
      customListViewController: customListViewController,
      length: length,
      ontap: ontap,
      onPressed: () {},
      move: move,
      fontSize: 16.sp,
      showButton: true,
      buttonText: buttonText,
    );
  }
}

class _IndexControllerViewState extends State<IndexControllerView> {
  @override
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.customListViewController,
      builder: (_, __) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: _responsive(
            customListViewController: widget.customListViewController,
            length: widget.length,
            ontap: widget.ontap ?? (value) {},
            onPressed: widget.onPressed ?? () {},
            move: widget.move,
            showButton: widget.showButton,
            buttonText: widget.buttonText,
            fontSize: widget.fontSize),
      ),
    );
  }

  Widget _responsive({
    required CustomListViewController customListViewController,
    required int length,
    required void Function(int) ontap,
    required void Function() onPressed,
    required double move,
    required double fontSize,
    bool showButton = false,
    String? buttonText,
  }) {
    return _buildControls(
        controller: customListViewController,
        length: length,
        move: move,
        fontSize: fontSize,
        showButton: showButton,
        buttonText: buttonText,
        onPressed: onPressed);
  }

  Widget _buildControls({
    required CustomListViewController controller,
    required int length,
    required double move,
    required double fontSize,
    required void Function() onPressed,
    bool showButton = false,
    String? buttonText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        showButton && buttonText != null
            ? Flexible(
                flex: 2,
                child: AspectRatio(
                  aspectRatio: 3.5,
                  child: CustomUi.defButton(
                    title: buttonText,
                    onPressed:
                        onPressed, // <- You can hook into `onPressed` here
                    radius: 8.w,
                    fontSize: 16.sp,
                    borderColor: AppColor.g15,
                    fontWeight: FontWeight.w500,
                    backgroundColor: AppColor.g10,
                    textColor: AppColor.white,
                    edgeInsets: EdgeInsets.zero,
                  ),
                ),
              )
            : _texts(
                controller: controller, fontSize: fontSize, length: length),
                if(showButton) Spacer(flex: 2,),
        _buttons(
            showButton: showButton,
            controller: controller,
            fontSize: fontSize,
            length: length,
            move: move,)
      ],
    );
  }

  Widget _buttons({
    required bool showButton,
    required CustomListViewController controller,
    required double fontSize,
    required int length,
    required double move,
 
  }) {
    return showButton
        ? Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _circleButton(
                  icon: Icons.arrow_back,
                  enabled: controller.canGoPrevious,
                  onTap: () => controller.previous(move),
                  showButton: showButton
                ),
                _texts(controller: controller, fontSize: fontSize, length: length),
                _circleButton(
                  icon: Icons.arrow_forward,
                  enabled: controller.canGoNext,
                  onTap: () => controller.next(move),
                  showButton: showButton
                ),
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _circleButton(
                icon: Icons.arrow_back,
                enabled: controller.canGoPrevious,
                onTap: () => controller.previous(move),
                showButton: showButton
              ),
              SizedBox(
                width: 20.w,
              ),
              _circleButton(
                icon: Icons.arrow_forward,
                enabled: controller.canGoNext,
                onTap: () => controller.next(move),
                showButton: showButton
              ),
            ],
          );
  }

  Widget _circleButton({
    required IconData icon,
    required bool enabled,
    required VoidCallback onTap,
    required bool showButton
  }) {
    return Container(
      width: showButton?30: 80.sl,
      height: showButton?30: 80.sl,
      padding: showButton?EdgeInsets.all(2): EdgeInsets.all(5.sl),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.g10,
        border: Border.all(color: AppColor.g15, width: 1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(icon, size: 24.w),
        color: enabled ? AppColor.white : AppColor.g60,
        onPressed: enabled ? onTap : () {},
      ),
    );
  }

  Widget _texts(
      {required CustomListViewController controller,
      required double fontSize,
      required int length}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: controller.visibleItemCount.toString(),
            style: CustomUi.defTextStyle(
              height: 1.5,
              fontSize: fontSize,
              color: AppColor.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' of $length',
            style: CustomUi.defTextStyle(
              height: 1.5,
              fontSize: fontSize,
              color: AppColor.g60,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
