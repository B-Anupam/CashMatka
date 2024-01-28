import 'controller/reset_password_two_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/core/utils/validation_functions.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordTwoScreen extends GetWidget<ResetPasswordTwoController> {
  ResetPasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

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
            padding: EdgeInsets.only(
              left: 22.h,
              top: 216.v,
              right: 22.h,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_reset_password".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 49.v),
                CustomTextFormField(
                  controller: controller.phoneNumberController,
                  hintText: "lbl_phone_number".tr,
                  hintStyle: CustomTextStyles.bodyMediumRobotoBlack900,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                ),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_otp_is_send_to_your".tr,
                      style: CustomTextStyles.labelMediumBlack900_1,
                    ),
                  ),
                ),
                SizedBox(height: 49.v),
                CustomElevatedButton(
                  text: "lbl_continue".tr,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    right: 13.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillLightBlueA,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
