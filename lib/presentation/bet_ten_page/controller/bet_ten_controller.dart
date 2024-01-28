import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_ten_page/models/bet_ten_model.dart';

/// A controller class for the BetTenPage.
///
/// This class manages the state of the BetTenPage, including the
/// current betTenModelObj
class BetTenController extends GetxController {
  BetTenController(this.betTenModelObj);

  Rx<BetTenModel> betTenModelObj;
}
