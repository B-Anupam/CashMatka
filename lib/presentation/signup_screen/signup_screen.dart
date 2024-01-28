import 'controller/signup_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/core/utils/validation_functions.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 13.v),
                          Text("lbl_signup2".tr,
                              style: theme.textTheme.headlineMedium),
                          SizedBox(height: 50.v),
                          _buildFullName(),
                          SizedBox(height: 34.v),
                          _buildPhoneNumber(),
                          SizedBox(height: 34.v),
                          _buildPassword(),
                          SizedBox(height: 46.v),
                          _buildSignup(),
                          SizedBox(height: 19.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_already_have_account".tr,
                                    style: theme.textTheme.labelLarge),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogin();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("lbl_login2".tr,
                                            style: CustomTextStyles
                                                .labelMediumIndigoA700
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))))
                              ])
                        ])))));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_full_name".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoBlack900,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_phone_number".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoBlack900,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoBlack900,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 12.v, 23.h, 13.v),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.h)),
                child: CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 22.v,
                    width: 21.h))),
        suffixConstraints: BoxConstraints(maxHeight: 47.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 25.h, top: 15.v, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA));
  }

  /// Section Widget
  Widget _buildSignupButton() {
    return CustomElevatedButton(
        height: 47.v,
        width: 330.h,
        text: "lbl_signup2".tr,
        buttonStyle: CustomButtonStyles.fillLightBlueA,
        onPressed: () {
          onTapSignupButton();
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildSignup() {
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
          _buildSignupButton()
        ]));
  }

  /// Navigates to the otpScreen when the action is triggered.
//   onTapSignupButton() async {
//     var res = await controller.signup();
//     if (res["status"] == 200) {
//       Get.toNamed(AppRoutes.loginPageScreen);
//     } else {
//       Get.snackbar("Error", res["message"],
//           backgroundColor: Colors.red, colorText: Colors.white);
//     }
//   }
  onTapSignupButton() {
    // Get.toNamed(AppRoutes.otpScreen, );
    controller.verifyPhoneNumber();
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapTxtLogin() {
    Get.toNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
