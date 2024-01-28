import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_fifteen_page/models/bet_fifteen_model.dart';

/// A controller class for the BetFifteenPage.
///
/// This class manages the state of the BetFifteenPage, including the
/// current betFifteenModelObj
class BetFifteenController extends GetxController {
  BetFifteenController(this.betFifteenModelObj);

  Rx<BetFifteenModel> betFifteenModelObj;
}
