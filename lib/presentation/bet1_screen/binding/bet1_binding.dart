import '../controller/bet1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Bet1Screen.
///
/// This class ensures that the Bet1Controller is created when the
/// Bet1Screen is first loaded.
class Bet1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Bet1Controller());
  }
}
