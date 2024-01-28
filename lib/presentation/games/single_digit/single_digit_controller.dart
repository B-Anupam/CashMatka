import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/data/apiClient/api_client.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';

class SingleDigitController extends GetxController {
  TextEditingController d0controller = TextEditingController();
  TextEditingController d1controller = TextEditingController();
  TextEditingController d2controller = TextEditingController();
  TextEditingController d3controller = TextEditingController();
  TextEditingController d4controller = TextEditingController();
  TextEditingController d5controller = TextEditingController();
  TextEditingController d6controller = TextEditingController();
  TextEditingController d7controller = TextEditingController();
  TextEditingController d8controller = TextEditingController();
  TextEditingController d9controller = TextEditingController();

  void submitPressed(args, type) async {
    List l = [];

    if (d0controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "0",
        "unit_points": "9.5",
        "points": "${d0controller.text}"
      });
    }
    // 2
    if (d1controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "1",
        "unit_points": "9.5",
        "points": "${d1controller.text}"
      });
    }
    if (d2controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "2",
        "unit_points": "9.5",
        "points": "${d2controller.text}"
      });
    }
    if (d3controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "3",
        "unit_points": "9.5",
        "points": "${d3controller.text}"
      });
    }
    if (d4controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "4",
        "unit_points": "9.5",
        "points": "${d4controller.text}"
      });
    }
    if (d5controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "5",
        "unit_points": "9.5",
        "points": "${d5controller.text}"
      });
    }
    if (d6controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "6",
        "unit_points": "9.5",
        "points": "${d6controller.text}"
      });
    }
    if (d7controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "7",
        "unit_points": "9.5",
        "points": "${d7controller.text}"
      });
    }
    if (d8controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "8",
        "unit_points": "9.5",
        "points": "${d8controller.text}"
      });
    }
    if (d9controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "9",
        "unit_points": "9.5",
        "points": "${d9controller.text}"
      });
    }
    print(l);
    print(args.gameCode);
    var res = await ApiClient.placeBet(args.gameCode, l);
    print(res + "result");
    var re = json.decode(res);
    if (re["message"] == "Game Submitted Successfully") {
      Get.snackbar("Bet Placed", "Success",
          colorText: Colors.white, backgroundColor: Colors.green);
      //   Get.toNamed(page)
    } else {
      Get.snackbar("Failed", re["message"],
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }
}
