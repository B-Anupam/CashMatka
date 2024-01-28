import '../controller/bet_seventeen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BetSeventeenScreen.
///
/// This class ensures that the BetSeventeenController is created when the
/// BetSeventeenScreen is first loaded.
class BetSeventeenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetSeventeenController());
  }
}
