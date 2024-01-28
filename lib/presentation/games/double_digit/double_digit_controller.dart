import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/data/apiClient/api_client.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:progress_state_button/progress_button.dart';

class DoubleDigitController extends GetxController {
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
  TextEditingController d10controller = TextEditingController();
  TextEditingController d11controller = TextEditingController();
  TextEditingController d12controller = TextEditingController();
  TextEditingController d13controller = TextEditingController();
  TextEditingController d14controller = TextEditingController();
  TextEditingController d15controller = TextEditingController();
  TextEditingController d16controller = TextEditingController();
  TextEditingController d17controller = TextEditingController();
  TextEditingController d18controller = TextEditingController();
  TextEditingController d19controller = TextEditingController();
  TextEditingController d20controller = TextEditingController();
  TextEditingController d21controller = TextEditingController();
  TextEditingController d22controller = TextEditingController();
  TextEditingController d23controller = TextEditingController();
  TextEditingController d24controller = TextEditingController();
  TextEditingController d25controller = TextEditingController();
  TextEditingController d26controller = TextEditingController();
  TextEditingController d27controller = TextEditingController();
  TextEditingController d28controller = TextEditingController();
  TextEditingController d29controller = TextEditingController();
  TextEditingController d30controller = TextEditingController();
  TextEditingController d31controller = TextEditingController();
  TextEditingController d32controller = TextEditingController();
  TextEditingController d33controller = TextEditingController();
  TextEditingController d34controller = TextEditingController();
  TextEditingController d35controller = TextEditingController();
  TextEditingController d36controller = TextEditingController();
  TextEditingController d37controller = TextEditingController();
  TextEditingController d38controller = TextEditingController();
  TextEditingController d39controller = TextEditingController();
  TextEditingController d40controller = TextEditingController();
  TextEditingController d41controller = TextEditingController();
  TextEditingController d42controller = TextEditingController();
  TextEditingController d43controller = TextEditingController();
  TextEditingController d44controller = TextEditingController();
  TextEditingController d45controller = TextEditingController();
  TextEditingController d46controller = TextEditingController();
  TextEditingController d47controller = TextEditingController();
  TextEditingController d48controller = TextEditingController();
  TextEditingController d49controller = TextEditingController();
  TextEditingController d50controller = TextEditingController();
  TextEditingController d51controller = TextEditingController();
  TextEditingController d52controller = TextEditingController();
  TextEditingController d53controller = TextEditingController();
  TextEditingController d54controller = TextEditingController();
  TextEditingController d55controller = TextEditingController();
  TextEditingController d56controller = TextEditingController();
  TextEditingController d57controller = TextEditingController();
  TextEditingController d58controller = TextEditingController();
  TextEditingController d59controller = TextEditingController();
  TextEditingController d60controller = TextEditingController();
  TextEditingController d61controller = TextEditingController();
  TextEditingController d62controller = TextEditingController();
  TextEditingController d63controller = TextEditingController();
  TextEditingController d64controller = TextEditingController();
  TextEditingController d65controller = TextEditingController();
  TextEditingController d66controller = TextEditingController();
  TextEditingController d67controller = TextEditingController();
  TextEditingController d68controller = TextEditingController();
  TextEditingController d69controller = TextEditingController();
  TextEditingController d70controller = TextEditingController();
  TextEditingController d71controller = TextEditingController();
  TextEditingController d72controller = TextEditingController();
  TextEditingController d73controller = TextEditingController();
  TextEditingController d74controller = TextEditingController();
  TextEditingController d75controller = TextEditingController();
  TextEditingController d76controller = TextEditingController();
  TextEditingController d77controller = TextEditingController();
  TextEditingController d78controller = TextEditingController();
  TextEditingController d79controller = TextEditingController();
  TextEditingController d80controller = TextEditingController();
  TextEditingController d81controller = TextEditingController();
  TextEditingController d82controller = TextEditingController();
  TextEditingController d83controller = TextEditingController();
  TextEditingController d84controller = TextEditingController();
  TextEditingController d85controller = TextEditingController();
  TextEditingController d86controller = TextEditingController();
  TextEditingController d87controller = TextEditingController();
  TextEditingController d88controller = TextEditingController();
  TextEditingController d89controller = TextEditingController();
  TextEditingController d90controller = TextEditingController();
  TextEditingController d91controller = TextEditingController();
  TextEditingController d92controller = TextEditingController();
  TextEditingController d93controller = TextEditingController();
  TextEditingController d94controller = TextEditingController();
  TextEditingController d95controller = TextEditingController();
  TextEditingController d96controller = TextEditingController();
  TextEditingController d97controller = TextEditingController();
  TextEditingController d98controller = TextEditingController();

  TextEditingController d99controller = TextEditingController();
  ButtonState btnState = ButtonState.idle;
  void submitPressed(args, type) async {
    btnState = ButtonState.loading;
    print(btnState);
    update();
    List l = [];
    String unitPoints = "";
    if (d0controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "00",
        "unit_points": "$unitPoints",
        "points": "${d0controller.text}"
      });
    }
    // 1
    if (d1controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "01",
        "unit_points": "$unitPoints",
        "points": "${d1controller.text}"
      });
    }
    // 2
    if (d2controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "02",
        "unit_points": "$unitPoints",
        "points": "${d2controller.text}"
      });
    }
    // 3
    if (d3controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "03",
        "unit_points": "$unitPoints",
        "points": "${d3controller.text}"
      });
    }
    if (d4controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "04",
        "unit_points": "$unitPoints",
        "points": "${d4controller.text}"
      });
    }
    if (d5controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "05",
        "unit_points": "$unitPoints",
        "points": "${d5controller.text}"
      });
    }
    if (d6controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "06",
        "unit_points": "$unitPoints",
        "points": "${d6controller.text}"
      });
    }
    if (d7controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "07",
        "unit_points": "$unitPoints",
        "points": "${d7controller.text}"
      });
    }
    if (d8controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "08",
        "unit_points": "$unitPoints",
        "points": "${d8controller.text}"
      });
    }
    if (d9controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "09",
        "unit_points": "$unitPoints",
        "points": "${d9controller.text}"
      });
    }

    if (d10controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "10",
        "unit_points": "$unitPoints",
        "points": "${d9controller.text}"
      });
    }
    if (d10controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "10",
        "unit_points": "$unitPoints",
        "points": "${d10controller.text}"
      });
    }
    if (d11controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "11",
        "unit_points": "$unitPoints",
        "points": "${d11controller.text}"
      });
    }
    if (d12controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "12",
        "unit_points": "$unitPoints",
        "points": "${d12controller.text}"
      });
    }
    if (d13controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "13",
        "unit_points": "$unitPoints",
        "points": "${d13controller.text}"
      });
    }
    if (d14controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "14",
        "unit_points": "$unitPoints",
        "points": "${d14controller.text}"
      });
    }
    if (d15controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "15",
        "unit_points": "$unitPoints",
        "points": "${d15controller.text}"
      });
    }
    if (d16controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "16",
        "unit_points": "$unitPoints",
        "points": "${d16controller.text}"
      });
    }
    if (d17controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "17",
        "unit_points": "$unitPoints",
        "points": "${d17controller.text}"
      });
    }
    if (d18controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "18",
        "unit_points": "$unitPoints",
        "points": "${d18controller.text}"
      });
    }
    if (d19controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "19",
        "unit_points": "$unitPoints",
        "points": "${d19controller.text}"
      });
    }
    if (d20controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "20",
        "unit_points": "$unitPoints",
        "points": "${d20controller.text}"
      });
    }
    if (d21controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "21",
        "unit_points": "$unitPoints",
        "points": "${d21controller.text}"
      });
    }
    if (d22controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "22",
        "unit_points": "$unitPoints",
        "points": "${d22controller.text}"
      });
    }
    if (d23controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "23",
        "unit_points": "$unitPoints",
        "points": "${d23controller.text}"
      });
    }
    if (d24controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "24",
        "unit_points": "$unitPoints",
        "points": "${d24controller.text}"
      });
    }
    if (d25controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "25",
        "unit_points": "$unitPoints",
        "points": "${d25controller.text}"
      });
    }
    if (d26controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "26",
        "unit_points": "$unitPoints",
        "points": "${d26controller.text}"
      });
    }
    if (d27controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "27",
        "unit_points": "$unitPoints",
        "points": "${d27controller.text}"
      });
    }
    if (d28controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "28",
        "unit_points": "$unitPoints",
        "points": "${d28controller.text}"
      });
    }
    if (d29controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "29",
        "unit_points": "$unitPoints",
        "points": "${d29controller.text}"
      });
    }
    if (d30controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "30",
        "unit_points": "$unitPoints",
        "points": "${d30controller.text}"
      });
    }
    if (d31controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "31",
        "unit_points": "$unitPoints",
        "points": "${d31controller.text}"
      });
    }
    if (d32controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "32",
        "unit_points": "$unitPoints",
        "points": "${d32controller.text}"
      });
    }
    if (d33controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "33",
        "unit_points": "$unitPoints",
        "points": "${d3controller.text}"
      });
    }
    if (d34controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "34",
        "unit_points": "$unitPoints",
        "points": "${d34controller.text}"
      });
    }
    if (d35controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "35",
        "unit_points": "$unitPoints",
        "points": "${d35controller.text}"
      });
    }
    if (d36controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "36",
        "unit_points": "$unitPoints",
        "points": "${d36controller.text}"
      });
    }
    if (d37controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "37",
        "unit_points": "$unitPoints",
        "points": "${d37controller.text}"
      });
    }
    if (d38controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "38",
        "unit_points": "$unitPoints",
        "points": "${d38controller.text}"
      });
    }
    if (d39controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "39",
        "unit_points": "$unitPoints",
        "points": "${d39controller.text}"
      });
    }
    if (d40controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "40",
        "unit_points": "$unitPoints",
        "points": "${d40controller.text}"
      });
    }
    if (d41controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "41",
        "unit_points": "$unitPoints",
        "points": "${d41controller.text}"
      });
    }
    if (d42controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "42",
        "unit_points": "$unitPoints",
        "points": "${d42controller.text}"
      });
    }
    if (d43controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "43",
        "unit_points": "$unitPoints",
        "points": "${d43controller.text}"
      });
    }
    if (d44controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "44",
        "unit_points": "$unitPoints",
        "points": "${d44controller.text}"
      });
    }
    if (d45controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "45",
        "unit_points": "$unitPoints",
        "points": "${d45controller.text}"
      });
    }
    if (d46controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "46",
        "unit_points": "$unitPoints",
        "points": "${d46controller.text}"
      });
    }
    if (d47controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "47",
        "unit_points": "$unitPoints",
        "points": "${d47controller.text}"
      });
    }
    if (d48controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "48",
        "unit_points": "$unitPoints",
        "points": "${d48controller.text}"
      });
    }
    if (d49controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "49",
        "unit_points": "$unitPoints",
        "points": "${d49controller.text}"
      });
    }
    if (d50controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "50",
        "unit_points": "$unitPoints",
        "points": "${d50controller.text}"
      });
    }
    if (d51controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "51",
        "unit_points": "$unitPoints",
        "points": "${d51controller.text}"
      });
    }
    if (d52controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "52",
        "unit_points": "$unitPoints",
        "points": "${d52controller.text}"
      });
    }
    if (d53controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "53",
        "unit_points": "$unitPoints",
        "points": "${d53controller.text}"
      });
    }
    if (d54controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "54",
        "unit_points": "$unitPoints",
        "points": "${d54controller.text}"
      });
    }
    if (d55controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "55",
        "unit_points": "$unitPoints",
        "points": "${d55controller.text}"
      });
    }
    if (d56controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "56",
        "unit_points": "$unitPoints",
        "points": "${d56controller.text}"
      });
    }
    if (d57controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "57",
        "unit_points": "$unitPoints",
        "points": "${d57controller.text}"
      });
    }
    if (d58controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "58",
        "unit_points": "$unitPoints",
        "points": "${d58controller.text}"
      });
    }
    if (d59controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "59",
        "unit_points": "$unitPoints",
        "points": "${d59controller.text}"
      });
    }
    if (d60controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "60",
        "unit_points": "$unitPoints",
        "points": "${d60controller.text}"
      });
    }
    if (d61controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "61",
        "unit_points": "$unitPoints",
        "points": "${d61controller.text}"
      });
    }
    if (d62controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "62",
        "unit_points": "$unitPoints",
        "points": "${d62controller.text}"
      });
    }
    if (d63controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "63",
        "unit_points": "$unitPoints",
        "points": "${d63controller.text}"
      });
    }
    if (d64controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "64",
        "unit_points": "$unitPoints",
        "points": "${d64controller.text}"
      });
    }
    if (d65controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "65",
        "unit_points": "$unitPoints",
        "points": "${d65controller.text}"
      });
    }
    if (d66controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "66",
        "unit_points": "$unitPoints",
        "points": "${d66controller.text}"
      });
    }
    if (d67controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "67",
        "unit_points": "$unitPoints",
        "points": "${d67controller.text}"
      });
    }
    if (d68controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "68",
        "unit_points": "$unitPoints",
        "points": "${d68controller.text}"
      });
    }
    if (d69controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "69",
        "unit_points": "$unitPoints",
        "points": "${d69controller.text}"
      });
    }

    if (d70controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "70",
        "unit_points": "$unitPoints",
        "points": "${d70controller.text}"
      });
    }
    if (d71controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "71",
        "unit_points": "$unitPoints",
        "points": "${d71controller.text}"
      });
    }
    if (d72controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "72",
        "unit_points": "$unitPoints",
        "points": "${d72controller.text}"
      });
    }
    if (d73controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "73",
        "unit_points": "$unitPoints",
        "points": "${d73controller.text}"
      });
    }
    if (d74controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "74",
        "unit_points": "$unitPoints",
        "points": "${d74controller.text}"
      });
    }
    if (d78controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "78",
        "unit_points": "$unitPoints",
        "points": "${d78controller.text}"
      });
    }
    if (d79controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "79",
        "unit_points": "$unitPoints",
        "points": "${d79controller.text}"
      });
    }
    if (d80controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "80",
        "unit_points": "$unitPoints",
        "points": "${d80controller.text}"
      });
    }
    if (d81controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "81",
        "unit_points": "$unitPoints",
        "points": "${d81controller.text}"
      });
    }
    if (d82controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "82",
        "unit_points": "$unitPoints",
        "points": "${d82controller.text}"
      });
    }
    if (d83controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "83",
        "unit_points": "$unitPoints",
        "points": "${d83controller.text}"
      });
    }
    if (d84controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "84",
        "unit_points": "$unitPoints",
        "points": "${d84controller.text}"
      });
    }
    if (d85controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "85",
        "unit_points": "$unitPoints",
        "points": "${d85controller.text}"
      });
    }
    if (d86controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "86",
        "unit_points": "$unitPoints",
        "points": "${d86controller.text}"
      });
    }
    if (d87controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "87",
        "unit_points": "$unitPoints",
        "points": "${d87controller.text}"
      });
    }
    if (d88controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "88",
        "unit_points": "$unitPoints",
        "points": "${d88controller.text}"
      });
    }
    if (d89controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "89",
        "unit_points": "$unitPoints",
        "points": "${d89controller.text}"
      });
    }
    if (d90controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "90",
        "unit_points": "$unitPoints",
        "points": "${d90controller.text}"
      });
    }
    if (d91controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "91",
        "unit_points": "$unitPoints",
        "points": "${d91controller.text}"
      });
    }
    if (d92controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "92",
        "unit_points": "$unitPoints",
        "points": "${d92controller.text}"
      });
    }
    if (d93controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "94",
        "unit_points": "$unitPoints",
        "points": "${d94controller.text}"
      });
    }
    if (d95controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "26",
        "unit_points": "$unitPoints",
        "points": "${d95controller.text}"
      });
    }
    if (d96controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "96",
        "unit_points": "$unitPoints",
        "points": "${d96controller.text}"
      });
    }
    if (d97controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "97",
        "unit_points": "$unitPoints",
        "points": "${d97controller.text}"
      });
    }
    if (d98controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "98",
        "unit_points": "$unitPoints",
        "points": "${d98controller.text}"
      });
    }
    if (d99controller.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "99",
        "unit_points": "$unitPoints",
        "points": "${d99controller.text}"
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
