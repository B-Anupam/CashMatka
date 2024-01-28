import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/apiClient/api_client.dart';
import '../../home_page_screen/controller/home_page_controller.dart';

class SinglePattiController extends GetxController {
  TextEditingController d128TextController = new TextEditingController();
  TextEditingController d137TextController = new TextEditingController();
  TextEditingController d146TextController = new TextEditingController();
  TextEditingController d236TextController = new TextEditingController();
  TextEditingController d245TextController = new TextEditingController();
  TextEditingController d290TextController = new TextEditingController();
  TextEditingController d380TextController = new TextEditingController();
  TextEditingController d470TextController = new TextEditingController();
  TextEditingController d489TextController = new TextEditingController();
  TextEditingController d560TextController = new TextEditingController();
  TextEditingController d678TextController = new TextEditingController();
  TextEditingController d579TextController = new TextEditingController();
  TextEditingController d129TextController = new TextEditingController();
  TextEditingController d138TextController = new TextEditingController();
  TextEditingController d147TextController = new TextEditingController();
  TextEditingController d156TextController = new TextEditingController();
  TextEditingController d237TextController = new TextEditingController();
  TextEditingController d246TextController = new TextEditingController();
  TextEditingController d345TextController = new TextEditingController();
  TextEditingController d390TextController = new TextEditingController();
  TextEditingController d480TextController = new TextEditingController();
  TextEditingController d570TextController = new TextEditingController();
  TextEditingController d679TextController = new TextEditingController();
  TextEditingController d120TextController = new TextEditingController();
  TextEditingController d139TextController = new TextEditingController();
  TextEditingController d148TextController = new TextEditingController();
  TextEditingController d157TextController = new TextEditingController();
  TextEditingController d238TextController = new TextEditingController();
  TextEditingController d247TextController = new TextEditingController();
  TextEditingController d256TextController = new TextEditingController();
  TextEditingController d346TextController = new TextEditingController();
  TextEditingController d490TextController = new TextEditingController();
  TextEditingController d580TextController = new TextEditingController();
  TextEditingController d670TextController = new TextEditingController();
  TextEditingController d689TextController = new TextEditingController();
  TextEditingController d130TextController = new TextEditingController();
  TextEditingController d149TextController = new TextEditingController();
  TextEditingController d158TextController = new TextEditingController();
  TextEditingController d167TextController = new TextEditingController();
  TextEditingController d239TextController = new TextEditingController();
  TextEditingController d248TextController = new TextEditingController();
  TextEditingController d257TextController = new TextEditingController();
  TextEditingController d347TextController = new TextEditingController();
  TextEditingController d356TextController = new TextEditingController();
  TextEditingController d590TextController = new TextEditingController();
  TextEditingController d680TextController = new TextEditingController();
  TextEditingController d789TextController = new TextEditingController();
  TextEditingController d140TextController = new TextEditingController();
  TextEditingController d159TextController = new TextEditingController();
  TextEditingController d168TextController = new TextEditingController();
  TextEditingController d230TextController = new TextEditingController();
  TextEditingController d249TextController = new TextEditingController();
  TextEditingController d258TextController = new TextEditingController();
  TextEditingController d267TextController = new TextEditingController();
  TextEditingController d348TextController = new TextEditingController();
  TextEditingController d357TextController = new TextEditingController();
  TextEditingController d456TextController = new TextEditingController();
  TextEditingController d690TextController = new TextEditingController();
  TextEditingController d780TextController = new TextEditingController();
  TextEditingController d123TextController = new TextEditingController();
  TextEditingController d150TextController = new TextEditingController();
  TextEditingController d169TextController = new TextEditingController();
  TextEditingController d178TextController = new TextEditingController();
  TextEditingController d240TextController = new TextEditingController();
  TextEditingController d259TextController = new TextEditingController();
  TextEditingController d268TextController = new TextEditingController();
  TextEditingController d349TextController = new TextEditingController();
  TextEditingController d358TextController = new TextEditingController();
  TextEditingController d457TextController = new TextEditingController();
  TextEditingController d367TextController = new TextEditingController();
  TextEditingController d790TextController = new TextEditingController();
  TextEditingController d124TextController = new TextEditingController();
  TextEditingController d160TextController = new TextEditingController();
  TextEditingController d179TextController = new TextEditingController();
  TextEditingController d250TextController = new TextEditingController();
  TextEditingController d269TextController = new TextEditingController();
  TextEditingController d278TextController = new TextEditingController();
  TextEditingController d340TextController = new TextEditingController();
  TextEditingController d359TextController = new TextEditingController();
  TextEditingController d368TextController = new TextEditingController();
  TextEditingController d458TextController = new TextEditingController();
  TextEditingController d467TextController = new TextEditingController();
  TextEditingController d890TextController = new TextEditingController();
  TextEditingController d125TextController = new TextEditingController();
  TextEditingController d134TextController = new TextEditingController();
  TextEditingController d170TextController = new TextEditingController();
  TextEditingController d189TextController = new TextEditingController();
  TextEditingController d260TextController = new TextEditingController();
  TextEditingController d279TextController = new TextEditingController();
  TextEditingController d350TextController = new TextEditingController();
  TextEditingController d369TextController = new TextEditingController();
  TextEditingController d378TextController = new TextEditingController();
  TextEditingController d459TextController = new TextEditingController();
  TextEditingController d567TextController = new TextEditingController();
  TextEditingController d468TextController = new TextEditingController();
  TextEditingController d126TextController = new TextEditingController();
  TextEditingController d135TextController = new TextEditingController();
  TextEditingController d180TextController = new TextEditingController();
  TextEditingController d234TextController = new TextEditingController();
  TextEditingController d270TextController = new TextEditingController();
  TextEditingController d289TextController = new TextEditingController();
  TextEditingController d360TextController = new TextEditingController();
  TextEditingController d379TextController = new TextEditingController();
  TextEditingController d450TextController = new TextEditingController();
  TextEditingController d469TextController = new TextEditingController();
  TextEditingController d478TextController = new TextEditingController();
  TextEditingController d568TextController = new TextEditingController();
  TextEditingController d127TextController = new TextEditingController();
  TextEditingController d136TextController = new TextEditingController();
  TextEditingController d145TextController = new TextEditingController();
  TextEditingController d190TextController = new TextEditingController();
  TextEditingController d235TextController = new TextEditingController();
  TextEditingController d280TextController = new TextEditingController();
  TextEditingController d370TextController = new TextEditingController();
  TextEditingController d479TextController = new TextEditingController();
  TextEditingController d460TextController = new TextEditingController();
  TextEditingController d569TextController = new TextEditingController();
  TextEditingController d389TextController = new TextEditingController();
  TextEditingController d578TextController = new TextEditingController();
  TextEditingController d589TextController = new TextEditingController();

  Future<bool> submitPressed(args, type) async {
    List l = [];
    String unitPoints = "700";
    if (d128TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "128",
        "unit_points": "$unitPoints",
        "points": "${d128TextController.text}"
      });
    }
    // 2
    if (d137TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "137",
        "unit_points": "$unitPoints",
        "points": "${d137TextController.text}"
      });
    }
    if (d146TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "146",
        "unit_points": "$unitPoints",
        "points": "${d146TextController.text}"
      });
    }
    if (d236TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "236",
        "unit_points": "$unitPoints",
        "points": "${d236TextController.text}"
      });
    }
    if (d245TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "245",
        "unit_points": "$unitPoints",
        "points": "${d245TextController.text}"
      });
    }
    if (d290TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "290",
        "unit_points": "$unitPoints",
        "points": "${d290TextController.text}"
      });
    }
    if (d380TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "380",
        "unit_points": "$unitPoints",
        "points": "${d380TextController.text}"
      });
    }
    if (d470TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "470",
        "unit_points": "$unitPoints",
        "points": "${d470TextController.text}"
      });
    }
    if (d489TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "489",
        "unit_points": "$unitPoints",
        "points": "${d489TextController.text}"
      });
    }
    if (d560TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "560",
        "unit_points": "$unitPoints",
        "points": "${d560TextController.text}"
      });
    }
    if (d678TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "678",
        "unit_points": "$unitPoints",
        "points": "${d678TextController.text}"
      });
    }
    if (d579TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "579",
        "unit_points": "$unitPoints",
        "points": "${d579TextController.text}"
      });
    }
    if (d129TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "129",
        "unit_points": "$unitPoints",
        "points": "${d129TextController.text}"
      });
    }
    if (d138TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "138",
        "unit_points": "$unitPoints",
        "points": "${d138TextController.text}"
      });
    }
    if (d147TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "147",
        "unit_points": "$unitPoints",
        "points": "${d147TextController.text}"
      });
    }
    if (d156TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "156",
        "unit_points": "$unitPoints",
        "points": "${d156TextController.text}"
      });
    }
    if (d237TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "237",
        "unit_points": "$unitPoints",
        "points": "${d237TextController.text}"
      });
    }
    if (d246TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "246",
        "unit_points": "$unitPoints",
        "points": "${d246TextController.text}"
      });
    }
    if (d345TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "345",
        "unit_points": "$unitPoints",
        "points": "${d345TextController.text}"
      });
    }
    if (d390TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "390",
        "unit_points": "$unitPoints",
        "points": "${d390TextController.text}"
      });
    }
    if (d480TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "480",
        "unit_points": "$unitPoints",
        "points": "${d480TextController.text}"
      });
    }
    if (d570TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "570",
        "unit_points": "$unitPoints",
        "points": "${d570TextController.text}"
      });
    }
    if (d679TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "679",
        "unit_points": "$unitPoints",
        "points": "${d679TextController.text}"
      });
    }
    if (d120TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "120",
        "unit_points": "$unitPoints",
        "points": "${d120TextController.text}"
      });
    }
    if (d139TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "139",
        "unit_points": "$unitPoints",
        "points": "${d139TextController.text}"
      });
    }
    if (d148TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "148",
        "unit_points": "$unitPoints",
        "points": "${d148TextController.text}"
      });
    }
    if (d157TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "157",
        "unit_points": "$unitPoints",
        "points": "${d157TextController.text}"
      });
    }
    if (d238TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "238",
        "unit_points": "$unitPoints",
        "points": "${d238TextController.text}"
      });
    }
    if (d247TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "247",
        "unit_points": "$unitPoints",
        "points": "${d247TextController.text}"
      });
    }
    if (d256TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "256",
        "unit_points": "$unitPoints",
        "points": "${d256TextController.text}"
      });
    }
    if (d346TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "346",
        "unit_points": "$unitPoints",
        "points": "${d346TextController.text}"
      });
    }
    if (d490TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "490",
        "unit_points": "$unitPoints",
        "points": "${d490TextController.text}"
      });
    }
    if (d580TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "580",
        "unit_points": "$unitPoints",
        "points": "${d580TextController.text}"
      });
    }
    if (d670TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "670",
        "unit_points": "$unitPoints",
        "points": "${d670TextController.text}"
      });
    }
    if (d689TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "689",
        "unit_points": "$unitPoints",
        "points": "${d689TextController.text}"
      });
    }
    if (d130TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "130",
        "unit_points": "$unitPoints",
        "points": "${d130TextController.text}"
      });
    }
    if (d149TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "149",
        "unit_points": "$unitPoints",
        "points": "${d149TextController.text}"
      });
    }
    if (d158TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "158",
        "unit_points": "$unitPoints",
        "points": "${d158TextController.text}"
      });
    }
    if (d167TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "167",
        "unit_points": "$unitPoints",
        "points": "${d167TextController.text}"
      });
    }
    if (d239TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "239",
        "unit_points": "$unitPoints",
        "points": "${d239TextController.text}"
      });
    }
    if (d248TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "248",
        "unit_points": "$unitPoints",
        "points": "${d248TextController.text}"
      });
    }
    if (d257TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "257",
        "unit_points": "$unitPoints",
        "points": "${d257TextController.text}"
      });
    }
    if (d347TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "347",
        "unit_points": "$unitPoints",
        "points": "${d347TextController.text}"
      });
    }
    if (d356TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "356",
        "unit_points": "$unitPoints",
        "points": "${d356TextController.text}"
      });
    }
    if (d590TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "590",
        "unit_points": "$unitPoints",
        "points": "${d590TextController.text}"
      });
    }
    if (d680TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "680",
        "unit_points": "$unitPoints",
        "points": "${d680TextController.text}"
      });
    }
    if (d789TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "789",
        "unit_points": "$unitPoints",
        "points": "${d789TextController.text}"
      });
    }
    if (d140TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "140",
        "unit_points": "$unitPoints",
        "points": "${d140TextController.text}"
      });
    }
    if (d159TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "159",
        "unit_points": "$unitPoints",
        "points": "${d159TextController.text}"
      });
    }
    if (d168TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "168",
        "unit_points": "$unitPoints",
        "points": "${d168TextController.text}"
      });
    }
    if (d230TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "230",
        "unit_points": "$unitPoints",
        "points": "${d230TextController.text}"
      });
    }
    if (d249TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "249",
        "unit_points": "$unitPoints",
        "points": "${d249TextController.text}"
      });
    }
    if (d258TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "258",
        "unit_points": "$unitPoints",
        "points": "${d258TextController.text}"
      });
    }
    if (d267TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "267",
        "unit_points": "$unitPoints",
        "points": "${d267TextController.text}"
      });
    }
    if (d348TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "348",
        "unit_points": "$unitPoints",
        "points": "${d348TextController.text}"
      });
    }
    if (d357TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "357",
        "unit_points": "$unitPoints",
        "points": "${d357TextController.text}"
      });
    }
    if (d456TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "456",
        "unit_points": "$unitPoints",
        "points": "${d456TextController.text}"
      });
    }
    if (d690TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "690",
        "unit_points": "$unitPoints",
        "points": "${d690TextController.text}"
      });
    }
    if (d780TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "780",
        "unit_points": "$unitPoints",
        "points": "${d780TextController.text}"
      });
    }
    if (d123TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "123",
        "unit_points": "$unitPoints",
        "points": "${d123TextController.text}"
      });
    }
    if (d150TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "150",
        "unit_points": "$unitPoints",
        "points": "${d150TextController.text}"
      });
    }
    if (d169TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "169",
        "unit_points": "$unitPoints",
        "points": "${d169TextController.text}"
      });
    }
    if (d178TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "178",
        "unit_points": "$unitPoints",
        "points": "${d178TextController.text}"
      });
    }
    if (d240TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "240",
        "unit_points": "$unitPoints",
        "points": "${d240TextController.text}"
      });
    }
    if (d259TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "259",
        "unit_points": "$unitPoints",
        "points": "${d259TextController.text}"
      });
    }
    if (d268TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "268",
        "unit_points": "$unitPoints",
        "points": "${d268TextController.text}"
      });
    }
    if (d349TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "349",
        "unit_points": "$unitPoints",
        "points": "${d349TextController.text}"
      });
    }
    if (d358TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "358",
        "unit_points": "$unitPoints",
        "points": "${d358TextController.text}"
      });
    }
    if (d457TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "457",
        "unit_points": "$unitPoints",
        "points": "${d457TextController.text}"
      });
    }
    if (d367TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "367",
        "unit_points": "$unitPoints",
        "points": "${d367TextController.text}"
      });
    }
    if (d790TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "790",
        "unit_points": "$unitPoints",
        "points": "${d790TextController.text}"
      });
    }
    if (d124TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "124",
        "unit_points": "$unitPoints",
        "points": "${d124TextController.text}"
      });
    }
    if (d160TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "160",
        "unit_points": "$unitPoints",
        "points": "${d160TextController.text}"
      });
    }
    if (d179TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "179",
        "unit_points": "$unitPoints",
        "points": "${d179TextController.text}"
      });
    }
    if (d250TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "250",
        "unit_points": "$unitPoints",
        "points": "${d250TextController.text}"
      });
    }
    if (d269TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "269",
        "unit_points": "$unitPoints",
        "points": "${d269TextController.text}"
      });
    }
    if (d278TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "278",
        "unit_points": "$unitPoints",
        "points": "${d278TextController.text}"
      });
    }
    if (d340TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "340",
        "unit_points": "$unitPoints",
        "points": "${d340TextController.text}"
      });
    }
    if (d359TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "359",
        "unit_points": "$unitPoints",
        "points": "${d359TextController.text}"
      });
    }
    if (d368TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "368",
        "unit_points": "$unitPoints",
        "points": "${d368TextController.text}"
      });
    }
    if (d458TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "458",
        "unit_points": "$unitPoints",
        "points": "${d458TextController.text}"
      });
    }
    if (d467TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "467",
        "unit_points": "$unitPoints",
        "points": "${d467TextController.text}"
      });
    }
    if (d890TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "890",
        "unit_points": "$unitPoints",
        "points": "${d890TextController.text}"
      });
    }
    if (d125TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "125",
        "unit_points": "$unitPoints",
        "points": "${d125TextController.text}"
      });
    }
    if (d134TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "134",
        "unit_points": "$unitPoints",
        "points": "${d134TextController.text}"
      });
    }
    if (d170TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "170",
        "unit_points": "$unitPoints",
        "points": "${d170TextController.text}"
      });
    }
    if (d189TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "189",
        "unit_points": "$unitPoints",
        "points": "${d189TextController.text}"
      });
    }
    if (d260TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "260",
        "unit_points": "$unitPoints",
        "points": "${d260TextController.text}"
      });
    }
    if (d279TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "279",
        "unit_points": "$unitPoints",
        "points": "${d279TextController.text}"
      });
    }
    if (d350TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "350",
        "unit_points": "$unitPoints",
        "points": "${d350TextController.text}"
      });
    }
    if (d369TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "369",
        "unit_points": "$unitPoints",
        "points": "${d369TextController.text}"
      });
    }
    if (d378TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "378",
        "unit_points": "$unitPoints",
        "points": "${d378TextController.text}"
      });
    }
    if (d459TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "459",
        "unit_points": "$unitPoints",
        "points": "${d459TextController.text}"
      });
    }
    if (d567TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "567",
        "unit_points": "$unitPoints",
        "points": "${d567TextController.text}"
      });
    }
    if (d468TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "468",
        "unit_points": "$unitPoints",
        "points": "${d468TextController.text}"
      });
    }
    if (d126TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "126",
        "unit_points": "$unitPoints",
        "points": "${d126TextController.text}"
      });
    }
    if (d135TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "135",
        "unit_points": "$unitPoints",
        "points": "${d135TextController.text}"
      });
    }
    if (d180TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "180",
        "unit_points": "$unitPoints",
        "points": "${d180TextController.text}"
      });
    }
    if (d234TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "234",
        "unit_points": "$unitPoints",
        "points": "${d234TextController.text}"
      });
    }
    if (d270TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "270",
        "unit_points": "$unitPoints",
        "points": "${d270TextController.text}"
      });
    }
    if (d289TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "289",
        "unit_points": "$unitPoints",
        "points": "${d289TextController.text}"
      });
    }
    if (d360TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "360",
        "unit_points": "$unitPoints",
        "points": "${d360TextController.text}"
      });
    }
    if (d379TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "379",
        "unit_points": "$unitPoints",
        "points": "${d379TextController.text}"
      });
    }
    if (d450TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "450",
        "unit_points": "$unitPoints",
        "points": "${d450TextController.text}"
      });
    }
    if (d469TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "469",
        "unit_points": "$unitPoints",
        "points": "${d469TextController.text}"
      });
    }
    if (d478TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "478",
        "unit_points": "$unitPoints",
        "points": "${d478TextController.text}"
      });
    }
    if (d568TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "568",
        "unit_points": "$unitPoints",
        "points": "${d568TextController.text}"
      });
    }
    if (d127TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "127",
        "unit_points": "$unitPoints",
        "points": "${d127TextController.text}"
      });
    }
    if (d136TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "136",
        "unit_points": "$unitPoints",
        "points": "${d136TextController.text}"
      });
    }
    if (d145TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "145",
        "unit_points": "$unitPoints",
        "points": "${d145TextController.text}"
      });
    }
    if (d190TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "190",
        "unit_points": "$unitPoints",
        "points": "${d190TextController.text}"
      });
    }
    if (d235TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "235",
        "unit_points": "$unitPoints",
        "points": "${d235TextController.text}"
      });
    }
    if (d280TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "280",
        "unit_points": "$unitPoints",
        "points": "${d280TextController.text}"
      });
    }
    if (d370TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "370",
        "unit_points": "$unitPoints",
        "points": "${d370TextController.text}"
      });
    }
    if (d479TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "479",
        "unit_points": "$unitPoints",
        "points": "${d479TextController.text}"
      });
    }
    if (d460TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "460",
        "unit_points": "$unitPoints",
        "points": "${d460TextController.text}"
      });
    }
    if (d569TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "569",
        "unit_points": "$unitPoints",
        "points": "${d569TextController.text}"
      });
    }
    if (d389TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "389",
        "unit_points": "$unitPoints",
        "points": "${d389TextController.text}"
      });
    }
    if (d578TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "578",
        "unit_points": "$unitPoints",
        "points": "${d578TextController.text}"
      });
    }
    if (d589TextController.text == "") {
    } else {
      l.add({
        "user_id": HomePageController.user.id,
        "game_result_level": "$type",
        "game_digit": "589",
        "unit_points": "$unitPoints",
        "points": "${d589TextController.text}"
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
