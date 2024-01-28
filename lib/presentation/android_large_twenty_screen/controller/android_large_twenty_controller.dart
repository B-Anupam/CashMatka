import 'package:matka/core/app_export.dart';import 'package:matka/presentation/android_large_twenty_screen/models/android_large_twenty_model.dart';import 'package:flutter/material.dart';/// A controller class for the AndroidLargeTwentyScreen.
///
/// This class manages the state of the AndroidLargeTwentyScreen, including the
/// current androidLargeTwentyModelObj
class AndroidLargeTwentyController extends GetxController {TextEditingController amountColumnController = TextEditingController();

TextEditingController nameColumnController = TextEditingController();

TextEditingController paytmNumberColumnController = TextEditingController();

Rx<AndroidLargeTwentyModel> androidLargeTwentyModelObj = AndroidLargeTwentyModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); amountColumnController.dispose(); nameColumnController.dispose(); paytmNumberColumnController.dispose(); }
onSelected(dynamic value) { for (var element in androidLargeTwentyModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} androidLargeTwentyModelObj.value.dropdownItemList.refresh(); }
 }
