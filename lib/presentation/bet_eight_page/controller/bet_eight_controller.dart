import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_eight_page/models/bet_eight_model.dart';

/// A controller class for the BetEightPage.
///
/// This class manages the state of the BetEightPage, including the
/// current betEightModelObj
class BetEightController extends GetxController {
  BetEightController(this.betEightModelObj);

  Rx<BetEightModel> betEightModelObj;
}
