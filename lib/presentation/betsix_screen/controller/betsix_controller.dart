import 'package:matka/core/app_export.dart';import 'package:matka/presentation/betsix_screen/models/betsix_model.dart';import 'package:flutter/material.dart';/// A controller class for the BetsixScreen.
///
/// This class manages the state of the BetsixScreen, including the
/// current betsixModelObj
class BetsixController extends GetxController {TextEditingController editTextColumnController = TextEditingController();

TextEditingController editTextRowController = TextEditingController();

TextEditingController editTextRowController1 = TextEditingController();

TextEditingController editTextColumnController1 = TextEditingController();

TextEditingController editTextColumnController2 = TextEditingController();

TextEditingController editTextRowController2 = TextEditingController();

TextEditingController editTextRowController3 = TextEditingController();

TextEditingController editTextColumnController3 = TextEditingController();

TextEditingController editTextRowController4 = TextEditingController();

TextEditingController editTextRowController5 = TextEditingController();

TextEditingController editTextRowController6 = TextEditingController();

TextEditingController editTextRowController7 = TextEditingController();

Rx<BetsixModel> betsixModelObj = BetsixModel().obs;

@override void onClose() { super.onClose(); editTextColumnController.dispose(); editTextRowController.dispose(); editTextRowController1.dispose(); editTextColumnController1.dispose(); editTextColumnController2.dispose(); editTextRowController2.dispose(); editTextRowController3.dispose(); editTextColumnController3.dispose(); editTextRowController4.dispose(); editTextRowController5.dispose(); editTextRowController6.dispose(); editTextRowController7.dispose(); }
 }
