import '../controller/bet3_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Bet3TabContainerScreen.
///
/// This class ensures that the Bet3TabContainerController is created when the
/// Bet3TabContainerScreen is first loaded.
class Bet3TabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Bet3TabContainerController());
  }
}
