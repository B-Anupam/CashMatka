import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_sixteen_page/models/bet_sixteen_model.dart';

/// A controller class for the BetSixteenPage.
///
/// This class manages the state of the BetSixteenPage, including the
/// current betSixteenModelObj
class BetSixteenController extends GetxController {
  BetSixteenController(this.betSixteenModelObj);

  Rx<BetSixteenModel> betSixteenModelObj;
}
