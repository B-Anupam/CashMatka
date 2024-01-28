import 'package:matka/core/app_export.dart';import 'package:matka/presentation/android_large_nineteen_screen/models/android_large_nineteen_model.dart';import 'package:flutter/material.dart';/// A controller class for the AndroidLargeNineteenScreen.
///
/// This class manages the state of the AndroidLargeNineteenScreen, including the
/// current androidLargeNineteenModelObj
class AndroidLargeNineteenController extends GetxController {TextEditingController amountFieldController = TextEditingController();

TextEditingController nameFieldController = TextEditingController();

TextEditingController paytmNumberFieldController = TextEditingController();

Rx<AndroidLargeNineteenModel> androidLargeNineteenModelObj = AndroidLargeNineteenModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); amountFieldController.dispose(); nameFieldController.dispose(); paytmNumberFieldController.dispose(); }
onSelected(dynamic value) { for (var element in androidLargeNineteenModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} androidLargeNineteenModelObj.value.dropdownItemList.refresh(); }
 }
