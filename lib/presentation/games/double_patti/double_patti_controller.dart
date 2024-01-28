import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/apiClient/api_client.dart';
import '../../home_page_screen/controller/home_page_controller.dart';

class DoublePattiController extends GetxController {
  TextEditingController d100TextController = new TextEditingController();
  TextEditingController d119TextController = new TextEditingController();
  TextEditingController d155TextController = new TextEditingController();
  TextEditingController d227TextController = new TextEditingController();
  TextEditingController d335TextController = new TextEditingController();
  TextEditingController d344TextController = new TextEditingController();
  TextEditingController d399TextController = new TextEditingController();
  TextEditingController d588TextController = new TextEditingController();
  TextEditingController d669TextController = new TextEditingController();
  TextEditingController d200TextController = new TextEditingController();
  TextEditingController d110TextController = new TextEditingController();
  TextEditingController d128TextController = new TextEditingController();
  TextEditingController d255TextController = new TextEditingController();
  TextEditingController d336TextController = new TextEditingController();
  TextEditingController d499TextController = new TextEditingController();
  TextEditingController d660TextController = new TextEditingController();
  TextEditingController d688TextController = new TextEditingController();
  TextEditingController d778TextController = new TextEditingController();
  TextEditingController d300TextController = new TextEditingController();
  TextEditingController d166TextController = new TextEditingController();
  TextEditingController d229TextController = new TextEditingController();
  TextEditingController d337TextController = new TextEditingController();
  TextEditingController d355TextController = new TextEditingController();
  TextEditingController d445TextController = new TextEditingController();
  TextEditingController d112TextController = new TextEditingController();
  TextEditingController d220TextController = new TextEditingController();
  TextEditingController d266TextController = new TextEditingController();
  TextEditingController d338TextController = new TextEditingController();
  TextEditingController d599TextController = new TextEditingController();
  TextEditingController d779TextController = new TextEditingController();
  TextEditingController d788TextController = new TextEditingController();
  TextEditingController d400TextController = new TextEditingController();
  TextEditingController d446TextController = new TextEditingController();
  TextEditingController d455TextController = new TextEditingController();
  TextEditingController d699TextController = new TextEditingController();
  TextEditingController d770TextController = new TextEditingController();
  TextEditingController d500TextController = new TextEditingController();
  TextEditingController d113TextController = new TextEditingController();
  TextEditingController d122TextController = new TextEditingController();
  TextEditingController d177TextController = new TextEditingController();
  TextEditingController d339TextController = new TextEditingController();
  TextEditingController d366TextController = new TextEditingController();
  TextEditingController d447TextController = new TextEditingController();
  TextEditingController d799TextController = new TextEditingController();
  TextEditingController d889TextController = new TextEditingController();
  TextEditingController d700TextController = new TextEditingController();
  TextEditingController d115TextController = new TextEditingController();
  TextEditingController d133TextController = new TextEditingController();
  TextEditingController d188TextController = new TextEditingController();
  TextEditingController d223TextController = new TextEditingController();
  TextEditingController d377TextController = new TextEditingController();
  TextEditingController d449TextController = new TextEditingController();
  TextEditingController d557TextController = new TextEditingController();
  TextEditingController d566TextController = new TextEditingController();
  TextEditingController d800TextController = new TextEditingController();
  TextEditingController d116TextController = new TextEditingController();
  TextEditingController d224TextController = new TextEditingController();
  TextEditingController d233TextController = new TextEditingController();
  TextEditingController d288TextController = new TextEditingController();
  TextEditingController d440TextController = new TextEditingController();
  TextEditingController d477TextController = new TextEditingController();
  TextEditingController d558TextController = new TextEditingController();
  TextEditingController d990TextController = new TextEditingController();
  TextEditingController d900TextController = new TextEditingController();
  TextEditingController d117TextController = new TextEditingController();
  TextEditingController d144TextController = new TextEditingController();
  TextEditingController d199TextController = new TextEditingController();
//   TextEditingController d255TextController = new TextEditingController();
  TextEditingController d388TextController = new TextEditingController();
  TextEditingController d559TextController = new TextEditingController();
  TextEditingController d577TextController = new TextEditingController();
  TextEditingController d667TextController = new TextEditingController();
  TextEditingController d550TextController = new TextEditingController();
  TextEditingController d668TextController = new TextEditingController();
  TextEditingController d244TextController = new TextEditingController();
  TextEditingController d299TextController = new TextEditingController();
//   TextEditingController d266TextController = new TextEditingController();
  TextEditingController d488TextController = new TextEditingController();
  TextEditingController d677TextController = new TextEditingController();
  TextEditingController d118TextController = new TextEditingController();
  TextEditingController d334TextController = new TextEditingController();
  TextEditingController d228TextController = new TextEditingController();

  TextEditingController d600TextController = new TextEditingController();
  TextEditingController d114TextController = new TextEditingController();
  TextEditingController d277TextController = new TextEditingController();
  TextEditingController d330TextController = new TextEditingController();
  TextEditingController d466TextController = new TextEditingController();
  TextEditingController d448TextController = new TextEditingController();
  TextEditingController d556TextController = new TextEditingController();
  TextEditingController d880TextController = new TextEditingController();
  TextEditingController d899TextController = new TextEditingController();

  Future<bool> submitPressed(args, type) async {
    List l = [];
    String unitPoints = "700";
    if (d600TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "600",
        "unit_points": "$unitPoints",
        "points": "${d600TextController.text}"
      });
    }
    if (d114TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "114",
        "unit_points": "$unitPoints",
        "points": "${d114TextController.text}"
      });
    }
    if (d277TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "277",
        "unit_points": "$unitPoints",
        "points": "${d277TextController.text}"
      });
    }
    if (d330TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "330",
        "unit_points": "$unitPoints",
        "points": "${d330TextController.text}"
      });
    }
    if (d448TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "448",
        "unit_points": "$unitPoints",
        "points": "${d448TextController.text}"
      });
    }
    if (d466TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "466",
        "unit_points": "$unitPoints",
        "points": "${d466TextController.text}"
      });
    }
    if (d556TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "556",
        "unit_points": "$unitPoints",
        "points": "${d556TextController.text}"
      });
    }
    if (d880TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "880",
        "unit_points": "$unitPoints",
        "points": "${d880TextController.text}"
      });
    }
    if (d899TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "899",
        "unit_points": "$unitPoints",
        "points": "${d899TextController.text}"
      });
    }

    if (d100TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "100",
        "unit_points": "$unitPoints",
        "points": "${d100TextController.text}"
      });
    }
    //
    if (d119TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "119",
        "unit_points": "$unitPoints",
        "points": "${d119TextController.text}"
      });
    }
    if (d155TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "155",
        "unit_points": "$unitPoints",
        "points": "${d155TextController.text}"
      });
    }
    if (d227TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "227",
        "unit_points": "$unitPoints",
        "points": "${d227TextController.text}"
      });
    }
    if (d335TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "335",
        "unit_points": "$unitPoints",
        "points": "${d335TextController.text}"
      });
    }
    if (d344TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "344",
        "unit_points": "$unitPoints",
        "points": "${d344TextController.text}"
      });
    }
    if (d588TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "588",
        "unit_points": "$unitPoints",
        "points": "${d588TextController.text}"
      });
    }
    if (d669TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "669",
        "unit_points": "$unitPoints",
        "points": "${d669TextController.text}"
      });
    }
    if (d200TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "200",
        "unit_points": "$unitPoints",
        "points": "${d200TextController.text}"
      });
    }
    if (d110TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "110",
        "unit_points": "$unitPoints",
        "points": "${d110TextController.text}"
      });
    }
    if (d228TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "228",
        "unit_points": "$unitPoints",
        "points": "${d228TextController.text}"
      });
    }
    if (d255TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "255",
        "unit_points": "$unitPoints",
        "points": "${d255TextController.text}"
      });
    }
    if (d336TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "336",
        "unit_points": "$unitPoints",
        "points": "${d336TextController.text}"
      });
    }
    if (d499TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "499",
        "unit_points": "$unitPoints",
        "points": "${d499TextController.text}"
      });
    }
    if (d660TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "660",
        "unit_points": "$unitPoints",
        "points": "${d660TextController.text}"
      });
    }
    if (d688TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "688",
        "unit_points": "$unitPoints",
        "points": "${d688TextController.text}"
      });
    }
    if (d778TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "778",
        "unit_points": "$unitPoints",
        "points": "${d778TextController.text}"
      });
    }
    if (d300TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "300",
        "unit_points": "$unitPoints",
        "points": "${d300TextController.text}"
      });
    }
    if (d116TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "116",
        "unit_points": "$unitPoints",
        "points": "${d116TextController.text}"
      });
    }
    if (d229TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "229",
        "unit_points": "$unitPoints",
        "points": "${d229TextController.text}"
      });
    }
    if (d337TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "337",
        "unit_points": "$unitPoints",
        "points": "${d337TextController.text}"
      });
    }
    if (d355TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "355",
        "unit_points": "$unitPoints",
        "points": "${d355TextController.text}"
      });
    }
    if (d445TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "445",
        "unit_points": "$unitPoints",
        "points": "${d445TextController.text}"
      });
    }
    if (d112TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "112",
        "unit_points": "$unitPoints",
        "points": "${d112TextController.text}"
      });
    }
    if (d220TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "220",
        "unit_points": "$unitPoints",
        "points": "${d220TextController.text}"
      });
    }
    if (d266TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "266",
        "unit_points": "$unitPoints",
        "points": "${d266TextController.text}"
      });
    }
    if (d338TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "338",
        "unit_points": "$unitPoints",
        "points": "${d338TextController.text}"
      });
    }
    if (d599TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "599",
        "unit_points": "$unitPoints",
        "points": "${d599TextController.text}"
      });
    }
    if (d779TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "779",
        "unit_points": "$unitPoints",
        "points": "${d779TextController.text}"
      });
    }
    if (d788TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "788",
        "unit_points": "$unitPoints",
        "points": "${d788TextController.text}"
      });
    }
    if (d400TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "400",
        "unit_points": "$unitPoints",
        "points": "${d400TextController.text}"
      });
    }
    if (d446TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "446",
        "unit_points": "$unitPoints",
        "points": "${d446TextController.text}"
      });
    }
    if (d455TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "455",
        "unit_points": "$unitPoints",
        "points": "${d455TextController.text}"
      });
    }
    if (d699TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "699",
        "unit_points": "$unitPoints",
        "points": "${d699TextController.text}"
      });
    }
    if (d770TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "770",
        "unit_points": "$unitPoints",
        "points": "${d770TextController.text}"
      });
    }
    if (d500TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "500",
        "unit_points": "$unitPoints",
        "points": "${d500TextController.text}"
      });
    }
    if (d113TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "113",
        "unit_points": "$unitPoints",
        "points": "${d113TextController.text}"
      });
    }
    if (d122TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "122",
        "unit_points": "$unitPoints",
        "points": "${d122TextController.text}"
      });
    }
    if (d177TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "177",
        "unit_points": "$unitPoints",
        "points": "${d177TextController.text}"
      });
    }
    if (d339TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "339",
        "unit_points": "$unitPoints",
        "points": "${d339TextController.text}"
      });
    }
    if (d366TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "366",
        "unit_points": "$unitPoints",
        "points": "${d366TextController.text}"
      });
    }
    if (d447TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "447",
        "unit_points": "$unitPoints",
        "points": "${d447TextController.text}"
      });
    }
    if (d799TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "799",
        "unit_points": "$unitPoints",
        "points": "${d799TextController.text}"
      });
    }
    if (d889TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "889",
        "unit_points": "$unitPoints",
        "points": "${d889TextController.text}"
      });
    }
    if (d700TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "700",
        "unit_points": "$unitPoints",
        "points": "${d700TextController.text}"
      });
    }
    if (d115TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "115",
        "unit_points": "$unitPoints",
        "points": "${d115TextController.text}"
      });
    }
    if (d133TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "133",
        "unit_points": "$unitPoints",
        "points": "${d133TextController.text}"
      });
    }
    if (d188TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "188",
        "unit_points": "$unitPoints",
        "points": "${d188TextController.text}"
      });
    }
    if (d223TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "223",
        "unit_points": "$unitPoints",
        "points": "${d223TextController.text}"
      });
    }
    if (d288TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "288",
        "unit_points": "$unitPoints",
        "points": "${d288TextController.text}"
      });
    }
    if (d440TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "440",
        "unit_points": "$unitPoints",
        "points": "${d440TextController.text}"
      });
    }
    if (d477TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "477",
        "unit_points": "$unitPoints",
        "points": "${d477TextController.text}"
      });
    }
    if (d558TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "558",
        "unit_points": "$unitPoints",
        "points": "${d558TextController.text}"
      });
    }
    if (d990TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "990",
        "unit_points": "$unitPoints",
        "points": "${d990TextController.text}"
      });
    }
    if (d900TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "900",
        "unit_points": "$unitPoints",
        "points": "${d900TextController.text}"
      });
    }
    if (d117TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "117",
        "unit_points": "$unitPoints",
        "points": "${d117TextController.text}"
      });
    }
    if (d144TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "144",
        "unit_points": "$unitPoints",
        "points": "${d144TextController.text}"
      });
    }
    if (d199TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "199",
        "unit_points": "$unitPoints",
        "points": "${d199TextController.text}"
      });
    }
    if (d255TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "255",
        "unit_points": "$unitPoints",
        "points": "${d255TextController.text}"
      });
    }
    if (d388TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "388",
        "unit_points": "$unitPoints",
        "points": "${d388TextController.text}"
      });
    }
    if (d559TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "559",
        "unit_points": "$unitPoints",
        "points": "${d559TextController.text}"
      });
    }
    if (d577TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "577",
        "unit_points": "$unitPoints",
        "points": "${d577TextController.text}"
      });
    }
    if (d667TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "667",
        "unit_points": "$unitPoints",
        "points": "${d667TextController.text}"
      });
    }
    if (d550TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "550",
        "unit_points": "$unitPoints",
        "points": "${d550TextController.text}"
      });
    }
    if (d668TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "668",
        "unit_points": "$unitPoints",
        "points": "${d668TextController.text}"
      });
    }
    if (d244TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "244",
        "unit_points": "$unitPoints",
        "points": "${d244TextController.text}"
      });
    }
    if (d299TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "299",
        "unit_points": "$unitPoints",
        "points": "${d299TextController.text}"
      });
    }
    if (d266TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "266",
        "unit_points": "$unitPoints",
        "points": "${d266TextController.text}"
      });
    }
    if (d488TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "488",
        "unit_points": "$unitPoints",
        "points": "${d488TextController.text}"
      });
    }
    if (d677TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "677",
        "unit_points": "$unitPoints",
        "points": "${d677TextController.text}"
      });
    }
    if (d118TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "118",
        "unit_points": "$unitPoints",
        "points": "${d118TextController.text}"
      });
    }
    if (d334TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "334",
        "unit_points": "$unitPoints",
        "points": "${d334TextController.text}"
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
