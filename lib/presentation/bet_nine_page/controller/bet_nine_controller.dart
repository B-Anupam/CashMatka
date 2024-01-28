import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_nine_page/models/bet_nine_model.dart';

/// A controller class for the BetNinePage.
///
/// This class manages the state of the BetNinePage, including the
/// current betNineModelObj
class BetNineController extends GetxController {
  BetNineController(this.betNineModelObj);

  Rx<BetNineModel> betNineModelObj;
}
