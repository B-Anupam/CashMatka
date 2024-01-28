import 'package:matka/core/app_export.dart';import 'package:matka/presentation/android_large_twentyone_screen/models/android_large_twentyone_model.dart';import 'package:flutter/material.dart';/// A controller class for the AndroidLargeTwentyoneScreen.
///
/// This class manages the state of the AndroidLargeTwentyoneScreen, including the
/// current androidLargeTwentyoneModelObj
class AndroidLargeTwentyoneController extends GetxController {TextEditingController nameEditTextController = TextEditingController();

TextEditingController accountNumberEditTextController = TextEditingController();

TextEditingController ifscCodeEditTextController = TextEditingController();

TextEditingController nameEditTextController1 = TextEditingController();

Rx<AndroidLargeTwentyoneModel> androidLargeTwentyoneModelObj = AndroidLargeTwentyoneModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameEditTextController.dispose(); accountNumberEditTextController.dispose(); ifscCodeEditTextController.dispose(); nameEditTextController1.dispose(); }
onSelected(dynamic value) { for (var element in androidLargeTwentyoneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} androidLargeTwentyoneModelObj.value.dropdownItemList.refresh(); }
 }
