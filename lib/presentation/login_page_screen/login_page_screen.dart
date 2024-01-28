import 'package:shared_preferences/shared_preferences.dart';

import 'controller/login_page_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/core/utils/validation_functions.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends GetWidget<LoginPageController> {
  LoginPageScreen({Key? key}) : super(key: key);

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
                          Text("lbl_login".tr,
                              style: theme.textTheme.headlineMedium),
                          SizedBox(height: 52.v),
                          CustomTextFormField(
                              controller: controller.phoneNumberController,
                              hintText: "lbl_phone_number".tr,
                              hintStyle:
                                  CustomTextStyles.bodyMediumRobotoBlack900,
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "err_msg_please_enter_valid_phone_number"
                                      .tr;
                                }
                                return null;
                              },
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25.h, vertical: 15.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA),
                          SizedBox(height: 34.v),
                          Obx(() => CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              hintStyle:
                                  CustomTextStyles.bodyMediumRobotoBlack900,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 12.v, 22.h, 13.v),
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
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 20.v,
                                  width: 76.h,
                                  margin: EdgeInsets.only(left: 19.h),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtForgotPassword();
                                                },
                                                child: Text(
                                                    "lbl_forgot_password".tr,
                                                    style: theme
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 12.h),
                                                child: Text("lbl".tr,
                                                    style: theme.textTheme
                                                        .labelMedium)))
                                      ]))),
                          SizedBox(height: 40.v),
                          _buildLoginStack(),
                          SizedBox(height: 19.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("msg_do_not_have_account".tr,
                                        style: theme.textTheme.labelMedium)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignUp();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .labelMediumIndigoA700
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))))
                              ]),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildLoginStack() {
    return SizedBox(
        height: 47.v,
        width: 330.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Text("lbl_login".tr,
                      style: CustomTextStyles.titleLargeInterWhiteA700))),
          CustomElevatedButton(
              height: 47.v,
              width: 330.h,
              text: "lbl_login".tr,
              buttonStyle: CustomButtonStyles.fillLightBlueA,
              onPressed: () {
                onTapLogin();
              },
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the resetPasswordTwoScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.resetPasswordTwoScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapLogin() async {
    var res = await controller.login();
    print(res);
    if (res["status"] == 200) {
      Get.toNamed(AppRoutes.homePageScreen);
    } else {
      Get.snackbar("Error", res["message"],
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtSignUp() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
