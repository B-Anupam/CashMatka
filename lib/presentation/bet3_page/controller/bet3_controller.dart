import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet3_page/models/bet3_model.dart';

/// A controller class for the Bet3Page.
///
/// This class manages the state of the Bet3Page, including the
/// current bet3ModelObj
class Bet3Controller extends GetxController {
  Bet3Controller(this.bet3ModelObj);

  Rx<Bet3Model> bet3ModelObj;
}
