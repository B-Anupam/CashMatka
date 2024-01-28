import 'package:matka/core/app_export.dart';import 'package:matka/presentation/bet_nine_tab_container_screen/models/bet_nine_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the BetNineTabContainerScreen.
///
/// This class manages the state of the BetNineTabContainerScreen, including the
/// current betNineTabContainerModelObj
class BetNineTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController editTextController = TextEditingController();

TextEditingController editTextController1 = TextEditingController();

TextEditingController editTextController2 = TextEditingController();

Rx<BetNineTabContainerModel> betNineTabContainerModelObj = BetNineTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

@override void onClose() { super.onClose(); editTextController.dispose(); editTextController1.dispose(); editTextController2.dispose(); }
 }
