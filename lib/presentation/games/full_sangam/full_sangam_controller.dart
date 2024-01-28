import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';

import '../../../data/apiClient/api_client.dart';

class FullSangamController extends GetxController {
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
        "game_result_level": "FS",
        "op": opTextController.text,
        "cp": cpTextController.text,
        "game_digit": "${opTextController.text}-${cpTextController.text}",
        "unit_points": "15000",
        "points": "${pointsTextController.text}"
      });
    }
    print(l);
    update();
  }

  onpressDelete(index) {
    l.removeAt(index);
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
}
