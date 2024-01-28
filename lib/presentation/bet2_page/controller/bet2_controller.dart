import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet2_page/models/bet2_model.dart';

/// A controller class for the Bet2Page.
///
/// This class manages the state of the Bet2Page, including the
/// current bet2ModelObj
class Bet2Controller extends GetxController {
  Bet2Controller(this.bet2ModelObj);

  Rx<Bet2Model> bet2ModelObj;
}
