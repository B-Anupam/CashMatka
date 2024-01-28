import '../controller/android_large_twentysix_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentysixScreen.
///
/// This class ensures that the AndroidLargeTwentysixController is created when the
/// AndroidLargeTwentysixScreen is first loaded.
class AndroidLargeTwentysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentysixController());
  }
}
