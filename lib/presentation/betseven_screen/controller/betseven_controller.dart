import 'package:matka/core/app_export.dart';import 'package:matka/presentation/betseven_screen/models/betseven_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the BetsevenScreen.
///
/// This class manages the state of the BetsevenScreen, including the
/// current betsevenModelObj
class BetsevenController extends GetxController with  CodeAutoFill {TextEditingController editTextSectionController = TextEditingController();

TextEditingController editTextSectionController1 = TextEditingController();

TextEditingController editTextSectionController2 = TextEditingController();

TextEditingController editTextSectionController3 = TextEditingController();

TextEditingController editTextSectionController4 = TextEditingController();

TextEditingController editTextSectionController5 = TextEditingController();

TextEditingController editTextSectionController6 = TextEditingController();

TextEditingController editTextController = TextEditingController();

Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<BetsevenModel> betsevenModelObj = BetsevenModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; }
@override void onInit() { super.onInit(); listenForCode(); }
@override void onClose() { super.onClose(); editTextSectionController.dispose(); editTextSectionController1.dispose(); editTextSectionController2.dispose(); editTextSectionController3.dispose(); editTextSectionController4.dispose(); editTextSectionController5.dispose(); editTextSectionController6.dispose(); editTextController.dispose(); }
 }
