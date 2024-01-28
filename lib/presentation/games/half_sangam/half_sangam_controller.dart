import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';

import '../../../data/apiClient/api_client.dart';
import '../../home_page_screen/controller/home_page_controller.dart';

class HalfSangamController extends GetxController {
  bool isOpcd = true;

  TextEditingController opTextController = TextEditingController();
  TextEditingController cpTextController = TextEditingController();
  TextEditingController pointsTextController = TextEditingController();
  List l = [];
  onAddPress() {
    if (opTextController.text != "" &&
        cpTextController.text != "" &&
        pointsTextController.text != "") {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "HS",
        "op": opTextController.text,
        "cp": cpTextController.text,
        "game_digit": "${opTextController.text}-${cpTextController.text}",
        "unit_points": "1200",
        "points": "${pointsTextController.text}"
      });
    }
    print(l);
    update();
  }

  onPressCheckBox(v) {
    isOpcd = v;
    print(isOpcd);
    update();
  }

  Future<bool> onPressSumit(args) async {
    var res = await ApiClient.placeBet(args.gameCode, l);
    print(res + "result");
    var re = json.decode(res);
    if (re["message"] == "Game Submitted Successfully") {
      Get.snackbar("Bet Placed", "Success",
          colorText: Colors.white, backgroundColor: Colors.green);
      //   Get.toNamed(page)
      return true;
    } else {
      Get.snackbar("Failed", re["message"],
          colorText: Colors.white, backgroundColor: Colors.red);
      return false;
    }
  }

  void onpressDelete(int index) {
    l.removeAt(index);
    update();
  }
}
