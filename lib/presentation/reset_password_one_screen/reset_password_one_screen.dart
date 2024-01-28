import 'controller/reset_password_one_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/core/utils/validation_functions.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordOneScreen extends GetWidget<ResetPasswordOneController> {
  ResetPasswordOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("lbl_reset_password".tr,
                              style: theme.textTheme.headlineMedium),
                          SizedBox(height: 49.v),
                          Obx(() => CustomTextFormField(
                              controller: controller.newpasswordController,
                              hintText: "msg_enter_new_password".tr,
                              hintStyle:
                                  CustomTextStyles.bodyMediumRobotoBlack900,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          12.h, 12.v, 23.h, 13.v),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.h)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgSettings,
                                          height: 22.v,
                                          width: 21.h))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 47.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword.value,
                              contentPadding: EdgeInsets.only(
                                  left: 25.h, top: 15.v, bottom: 15.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA)),
                          SizedBox(height: 34.v),
                          Obx(() => CustomTextFormField(
                              controller: controller.newpasswordController1,
                              hintText: "msg_re_enter_new_password".tr,
                              hintStyle:
                                  CustomTextStyles.bodyMediumRobotoBlack900,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          12.h, 12.v, 23.h, 13.v),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.h)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgSettings,
                                          height: 22.v,
                                          width: 21.h))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 47.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword1.value,
                              contentPadding: EdgeInsets.only(
                                  left: 25.h, top: 15.v, bottom: 15.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA)),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 14.h),
                                  child: Text("msg_password_must_be".tr,
                                      style: CustomTextStyles
                                          .labelMediumBlack900))),
                          SizedBox(height: 48.v),
                          CustomElevatedButton(
                              text: "lbl_save_changes".tr,
                              margin: EdgeInsets.only(left: 14.h, right: 13.h),
                              buttonStyle: CustomButtonStyles.fillLightBlueA,
                              onPressed: () {
                                onTapSaveChanges();
                              }),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapSaveChanges() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
