import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';

import '../../../data/apiClient/api_client.dart';

class CyclepattiController extends GetxController {
  TextEditingController opTextController = TextEditingController();
//   TextEditingController cpTextController = TextEditingController();
  TextEditingController pointsTextController = TextEditingController();
  List l = [];

  onAddPress(type) {
    if (opTextController.text != "" && pointsTextController.text != "") {
      List opList = opTextController.text.split("");
      for (int i = 100; i < 999; i++) {
        List digit = i.toString().split("");
        if (digit.contains(opList[0])) {
          digit.remove(opList[0]);
          if (digit.contains(opList[1])) {
            l.add({
              "user_id": HomePageController.user.id,
              "game_result_level": "$type",
              "game_digit": "${i}",
              "unit_points": "140",
              "points": "${pointsTextController.text}"
            });
          }
        }
        if (l.length == 10) {
          break;
        }
      }
      //   l.add({
      //     "user_id": HomePageController.user.id,
      //     "game_result_level": "$type",
      //     "op": opTextController.text,
      //     "game_digit": "${opTextController.text}",
      //     "unit_points": "140",
      //     "points": "${pointsTextController.text}"
      //   });
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
