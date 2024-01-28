import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet3_tab_container_screen/models/bet3_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Bet3TabContainerScreen.
///
/// This class manages the state of the Bet3TabContainerScreen, including the
/// current bet3TabContainerModelObj
class Bet3TabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<Bet3TabContainerModel> bet3TabContainerModelObj =
      Bet3TabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
