import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/reset_password_two_screen/models/reset_password_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetPasswordTwoScreen.
///
/// This class manages the state of the ResetPasswordTwoScreen, including the
/// current resetPasswordTwoModelObj
class ResetPasswordTwoController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<ResetPasswordTwoModel> resetPasswordTwoModelObj =
      ResetPasswordTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
