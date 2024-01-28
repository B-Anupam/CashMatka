import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_thirteen_page/models/bet_thirteen_model.dart';

/// A controller class for the BetThirteenPage.
///
/// This class manages the state of the BetThirteenPage, including the
/// current betThirteenModelObj
class BetThirteenController extends GetxController {
  BetThirteenController(this.betThirteenModelObj);

  Rx<BetThirteenModel> betThirteenModelObj;
}
