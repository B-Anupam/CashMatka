import '../controller/android_large_twentyone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentyoneScreen.
///
/// This class ensures that the AndroidLargeTwentyoneController is created when the
/// AndroidLargeTwentyoneScreen is first loaded.
class AndroidLargeTwentyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentyoneController());
  }
}
