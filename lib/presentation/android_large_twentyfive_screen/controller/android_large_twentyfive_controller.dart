import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentyfive_screen/models/android_large_twentyfive_model.dart';
import 'package:flutter/material.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';

/// A controller class for the AndroidLargeTwentyfiveScreen.
///
/// This class manages the state of the AndroidLargeTwentyfiveScreen, including the
/// current androidLargeTwentyfiveModelObj
class AndroidLargeTwentyfiveController extends GetxController {
  TextEditingController amountFieldController = TextEditingController();

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController paytmNumberFieldController = TextEditingController();

  Rx<AndroidLargeTwentyfiveModel> androidLargeTwentyfiveModelObj =
      AndroidLargeTwentyfiveModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  int iv = 0;
  @override
  void onClose() {
    super.onClose();
    amountFieldController.dispose();
    nameFieldController.dispose();
    paytmNumberFieldController.dispose();
  }

  onSelected(dynamic value) {
    iv = value;
    for (var element
        in androidLargeTwentyfiveModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }

    androidLargeTwentyfiveModelObj.value.dropdownItemList.refresh();
  }

  onSubmit() async {
    Get.dialog(Center(
      child: CircularProgressIndicator(),
    ));
    var data = {
      "payment_method": iv == 1
          ? "paytm"
          : iv == 2
              ? "googlepay"
              : iv == 3
                  ? "phone pay"
                  : "",
      "user_name": HomePageController.user.username,
      "user_id": HomePageController.user.id,
      "amount": amountFieldController.text.toString(),
      "account_number": paytmNumberFieldController.text.toString(),
      "account_holder": nameFieldController.text.toString(),
      "status": "pending"
    };
    try {
      await FirebaseFirestore.instance.collection("withdrawal").add(data);
    } catch (ex) {}
    Get.back();
    Get.snackbar("Withdrawal Requested", "Please wait...",
        colorText: Colors.white, backgroundColor: Colors.green);
    Get.toNamed(AppRoutes.homePageScreen);
  }
}
