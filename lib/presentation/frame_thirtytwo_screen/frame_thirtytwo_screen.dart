import 'controller/frame_thirtytwo_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
Widget FrameThirtyTwoWidget() {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 70.v,
          width: 69.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCancel,
                height: 64.v,
                width: 69.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCancel,
                height: 64.v,
                width: 69.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 17.v),
        SizedBox(
          height: 15.v,
          width: 142.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_betting_is_closed".tr,
                  style: CustomTextStyles.labelLargeDeeporangeA700,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_betting_is_closed".tr,
                  style: CustomTextStyles.labelLargeDeeporangeA700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 23.v),
        SizedBox(
          height: 29.v,
          width: 245.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    "lbl_ok".tr,
                    style: CustomTextStyles.labelMediumBold,
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 29.v,
                width: 245.h,
                text: "lbl_ok".tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                buttonTextStyle: CustomTextStyles.labelMediumBold,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 25.v),
      ],
    ),
  );
}
