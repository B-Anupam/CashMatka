import '../controller/bet_eight_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BetEightTabContainerScreen.
///
/// This class ensures that the BetEightTabContainerController is created when the
/// BetEightTabContainerScreen is first loaded.
class BetEightTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetEightTabContainerController());
  }
}
