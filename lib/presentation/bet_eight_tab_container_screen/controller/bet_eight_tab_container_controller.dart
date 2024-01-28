import 'package:matka/core/app_export.dart';import 'package:matka/presentation/bet_eight_tab_container_screen/models/bet_eight_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the BetEightTabContainerScreen.
///
/// This class manages the state of the BetEightTabContainerScreen, including the
/// current betEightTabContainerModelObj
class BetEightTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController editTextController = TextEditingController();

TextEditingController editTextController1 = TextEditingController();

Rx<BetEightTabContainerModel> betEightTabContainerModelObj = BetEightTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

@override void onClose() { super.onClose(); editTextController.dispose(); editTextController1.dispose(); }
 }
