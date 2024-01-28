import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_state_button/progress_button.dart';

import '../../../data/apiClient/api_client.dart';
import '../../home_page_screen/controller/home_page_controller.dart';

class TriplePattiController extends GetxController {
  TextEditingController d000TextController = new TextEditingController();
  TextEditingController d111TextController = new TextEditingController();
  TextEditingController d222TextController = new TextEditingController();
  TextEditingController d333TextController = new TextEditingController();
  TextEditingController d444TextController = new TextEditingController();
  TextEditingController d555TextController = new TextEditingController();
  TextEditingController d666TextController = new TextEditingController();
  TextEditingController d777TextController = new TextEditingController();
  TextEditingController d888TextController = new TextEditingController();
  TextEditingController d999TextController = new TextEditingController();
  ButtonState btnState = ButtonState.idle;

  Future<bool> submitPressed(args, type) async {
    btnState = ButtonState.loading;
    print(btnState);
    print(btnState.name);
    update();
    List l = [];
    String unitPoints = "700";
    if (d000TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "000",
        "unit_points": "$unitPoints",
        "points": "${d000TextController.text}"
      });
    }
    // 2
    if (d111TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "111",
        "unit_points": "$unitPoints",
        "points": "${d111TextController.text}"
      });
    }
    if (d222TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "222",
        "unit_points": "$unitPoints",
        "points": "${d222TextController.text}"
      });
    }
    if (d333TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "333",
        "unit_points": "$unitPoints",
        "points": "${d333TextController.text}"
      });
    }
    if (d444TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "444",
        "unit_points": "$unitPoints",
        "points": "${d444TextController.text}"
      });
    }
    if (d555TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "555",
        "unit_points": "$unitPoints",
        "points": "${d555TextController.text}"
      });
    }
    if (d666TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "666",
        "unit_points": "$unitPoints",
        "points": "${d666TextController.text}"
      });
    }
    if (d777TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "777",
        "unit_points": "$unitPoints",
        "points": "${d777TextController.text}"
      });
    }
    if (d888TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "888",
        "unit_points": "$unitPoints",
        "points": "${d888TextController.text}"
      });
    }
    if (d999TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "999",
        "unit_points": "$unitPoints",
        "points": "${d999TextController.text}"
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
      return true;
    } else {
      Get.snackbar("Failed", re["message"],
          colorText: Colors.white, backgroundColor: Colors.red);
      return false;
    }
  }
}
