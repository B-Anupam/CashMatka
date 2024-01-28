import 'controller/otp_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:matka/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key, this.verificationId}) : super(key: key);
  final verificationId;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OtpController());
    final args = Get.arguments;
    Widget _buildOtpViewSection() {
      return Container(
          margin: EdgeInsets.only(right: 1.h),
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Column(children: [
            Text("lbl_enter_otp".tr, style: theme.textTheme.headlineMedium),
            SizedBox(height: 28.v),
            Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Obx(() => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {})))
          ]));
    }

    /// Navigates to the loginPageScreen when the action is triggered.
    onTapVerifyOTP(args) async {
      var res = await controller.verifyOtp(args);
      if (res["status"] == 200) {
        Get.toNamed(AppRoutes.loginPageScreen);
      } else {
        Get.snackbar("Error", res["message"],
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    }

    onTapSignupButton() async {}

    print(args);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 35.h, top: 212.v, right: 35.h),
                child: Column(children: [
                  _buildOtpViewSection(),
                  SizedBox(height: 11.v),
                  //   Text(args.toString()),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(children: [
                            Text("lbl_resend".tr,
                                style: CustomTextStyles
                                    .labelMediumIndigoA700Medium),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("lbl_in_30_sec".tr,
                                    style:
                                        CustomTextStyles.labelMediumBlack900))
                          ]))),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                      text: "lbl_verify_otp".tr,
                      buttonStyle: CustomButtonStyles.fillLightBlueA,
                      onPressed: () {
                        onTapVerifyOTP(args);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
}
