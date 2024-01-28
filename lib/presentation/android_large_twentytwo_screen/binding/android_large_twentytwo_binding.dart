import '../controller/android_large_twentytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentytwoScreen.
///
/// This class ensures that the AndroidLargeTwentytwoController is created when the
/// AndroidLargeTwentytwoScreen is first loaded.
class AndroidLargeTwentytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentytwoController());
  }
}
