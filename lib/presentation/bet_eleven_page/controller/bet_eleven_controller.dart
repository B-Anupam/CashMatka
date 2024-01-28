import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_eleven_page/models/bet_eleven_model.dart';

/// A controller class for the BetElevenPage.
///
/// This class manages the state of the BetElevenPage, including the
/// current betElevenModelObj
class BetElevenController extends GetxController {
  BetElevenController(this.betElevenModelObj);

  Rx<BetElevenModel> betElevenModelObj;
}
