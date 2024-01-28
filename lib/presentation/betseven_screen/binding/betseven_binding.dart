import '../controller/betseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BetsevenScreen.
///
/// This class ensures that the BetsevenController is created when the
/// BetsevenScreen is first loaded.
class BetsevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetsevenController());
  }
}
