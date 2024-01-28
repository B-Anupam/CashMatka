import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/otp_screen/models/otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

import '../../../data/apiClient/api_client.dart';

/// A controller class for the OtpScreen.
///
/// This class manages the state of the OtpScreen, including the
/// current otpModelObj
class OtpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<OtpModel> otpModelObj = OtpModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  verifyOtp(args) async {
    print(args);
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: args[3], smsCode: otpController.value.text.trim());

    // Sign the user in (or link) with the credential
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    if (userCredential.user != null) {
      print(userCredential.user?.phoneNumber);
      FirebaseFirestore.instance
          .collection("matkausers")
          .doc(userCredential.user!.phoneNumber)
          .set({});
      return signup(args);
    }
  }

  signup(args) async {
    var res = await ApiClient.register(
        {"username": args[0], "password": args[2], "mobile": args[1]});
    print(res);
    return res;
  }
}
