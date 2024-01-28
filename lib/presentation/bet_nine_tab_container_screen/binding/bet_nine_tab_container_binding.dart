import '../controller/bet_nine_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BetNineTabContainerScreen.
///
/// This class ensures that the BetNineTabContainerController is created when the
/// BetNineTabContainerScreen is first loaded.
class BetNineTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetNineTabContainerController());
  }
}
