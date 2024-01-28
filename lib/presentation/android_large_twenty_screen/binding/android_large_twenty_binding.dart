import '../controller/android_large_twenty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentyScreen.
///
/// This class ensures that the AndroidLargeTwentyController is created when the
/// AndroidLargeTwentyScreen is first loaded.
class AndroidLargeTwentyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentyController());
  }
}
