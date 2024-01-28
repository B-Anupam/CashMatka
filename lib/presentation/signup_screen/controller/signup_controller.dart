import 'package:firebase_auth/firebase_auth.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/otp_screen/otp_screen.dart';
import 'package:matka/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  Rx<bool> isShowPassword = true.obs;
  String? vid;
  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  void verifyPhoneNumber() async {
    try {
      await FirebaseAuth.instance
          .verifyPhoneNumber(
            phoneNumber: '+91${phoneNumberController.text.trim()}',
            verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException e) {},
            codeSent: (String verificationId, int? resendToken) {
              print(verificationId);
              if (verificationId.length > 5) {
                vid = verificationId;
                Get.to(OtpScreen(), arguments: [
                  fullNameController.text,
                  phoneNumberController.text,
                  passwordController.text,
                  vid,
                ]);
              }
            },
            codeAutoRetrievalTimeout: (String verificationId) {},
          )
          .then((value) => {print("id verification $vid")});
    } catch (e) {
      print(e.toString());
    }
  }
}
