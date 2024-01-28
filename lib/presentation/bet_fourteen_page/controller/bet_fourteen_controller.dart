import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_fourteen_page/models/bet_fourteen_model.dart';

/// A controller class for the BetFourteenPage.
///
/// This class manages the state of the BetFourteenPage, including the
/// current betFourteenModelObj
class BetFourteenController extends GetxController {
  BetFourteenController(this.betFourteenModelObj);

  Rx<BetFourteenModel> betFourteenModelObj;
}
