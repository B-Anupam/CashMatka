import 'package:matka/core/app_export.dart';
import 'package:matka/data/apiClient/api_client.dart';
import 'package:matka/presentation/login_page_screen/models/login_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginPageScreen.
///
/// This class manages the state of the LoginPageScreen, including the
/// current loginPageModelObj
class LoginPageController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  Rx<bool> isShowPassword = true.obs;

  login() async {
    return await ApiClient.login({
      "username": phoneNumberController.text.trim(),
      "password": passwordController.text.trim()
    });
  }

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}
