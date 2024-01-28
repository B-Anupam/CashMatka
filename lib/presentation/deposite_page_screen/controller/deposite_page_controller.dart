import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:easy_upi_payment/easy_upi_payment.dart';
import 'package:matka/data/apiClient/api_client.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';

/// A controller class for the DepositePageScreen.
///
/// This class manages the state of the DepositePageScreen, including the
/// current depositePageModelObj
class DepositePageController extends GetxController {
  TextEditingController amountController = TextEditingController();

//   Rx<DepositePageModel> depositePageModelObj = DepositePageModel().obs;
  ontapChip(value) {
    amountController.text = value;
    update();
    print(amountController.text);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  getUpi() {}

  @override
  void onClose() {
    super.onClose();
    amountController.dispose();
  }

  void addPoints() async {
    var data = {
      "id": ApiClient.token,
      "points": (double.parse(HomePageController.user.points.toString()) +
              double.parse(amountController.text))
          .toInt()
    };
    print(data);
    try {
      final res = await EasyUpiPaymentPlatform.instance.startPayment(
        EasyUpiPaymentModel(
          payeeVpa: 'q76849831@ybl',
          payeeName: 'Gaurav Jajoo',
          amount: double.parse(amountController.text.trim()),
          description: 'Testing payment',
        ),
      );
      //   ApiClient.updateUser({
      //     "id": ApiClient.token,
      //     "points": double.parse(HomePageController.user.points.toString()) +
      //         double.parse(amountController.text)
      //   });
      print(res);
      await ApiClient.updateUser(data);
      await HomePageController().getUser();
      Get.snackbar("Success", "Coins added successfully",
          colorText: Colors.white, backgroundColor: Colors.green);
    } on EasyUpiPaymentException {
      Get.snackbar("Failed", "Not added",
          colorText: Colors.white, backgroundColor: Colors.red);
      print("error");
    }
  }
}
