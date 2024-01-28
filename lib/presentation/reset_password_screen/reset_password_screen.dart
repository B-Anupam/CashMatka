import 'controller/reset_password_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 100.adaptSize,
                          width: 100.adaptSize),
                      SizedBox(height: 31.v),
                      Text("msg_password_changed".tr,
                          style: CustomTextStyles.headlineMediumOnPrimary),
                      SizedBox(height: 8.v),
                      Container(
                          width: 226.h,
                          margin: EdgeInsets.only(left: 38.h, right: 40.h),
                          child: Text("msg_your_password_has".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallBluegray400
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 26.v),
                      CustomElevatedButton(
                          text: "lbl_back_to_login".tr,
                          buttonStyle: CustomButtonStyles.fillLightBlueA,
                          onPressed: () {
                            onTapBackToLogin();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapBackToLogin() {
    Get.toNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
