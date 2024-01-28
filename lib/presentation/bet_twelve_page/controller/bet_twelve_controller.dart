import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_twelve_page/models/bet_twelve_model.dart';

/// A controller class for the BetTwelvePage.
///
/// This class manages the state of the BetTwelvePage, including the
/// current betTwelveModelObj
class BetTwelveController extends GetxController {
  BetTwelveController(this.betTwelveModelObj);

  Rx<BetTwelveModel> betTwelveModelObj;
}
