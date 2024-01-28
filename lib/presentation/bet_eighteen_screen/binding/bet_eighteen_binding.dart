import '../controller/bet_eighteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BetEighteenScreen.
///
/// This class ensures that the BetEighteenController is created when the
/// BetEighteenScreen is first loaded.
class BetEighteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetEighteenController());
  }
}
