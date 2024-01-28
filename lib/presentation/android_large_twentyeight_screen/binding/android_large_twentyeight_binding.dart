import '../controller/android_large_twentyeight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentyeightScreen.
///
/// This class ensures that the AndroidLargeTwentyeightController is created when the
/// AndroidLargeTwentyeightScreen is first loaded.
class AndroidLargeTwentyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentyeightController());
  }
}
