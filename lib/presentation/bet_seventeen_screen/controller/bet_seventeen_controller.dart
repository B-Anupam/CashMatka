import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_seventeen_screen/models/bet_seventeen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BetSeventeenScreen.
///
/// This class manages the state of the BetSeventeenScreen, including the
/// current betSeventeenModelObj
class BetSeventeenController extends GetxController {
  Rx<BetSeventeenModel> betSeventeenModelObj = BetSeventeenModel().obs;
}
