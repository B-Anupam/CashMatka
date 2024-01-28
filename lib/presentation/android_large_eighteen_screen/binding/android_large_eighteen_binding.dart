import '../controller/android_large_eighteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeEighteenScreen.
///
/// This class ensures that the AndroidLargeEighteenController is created when the
/// AndroidLargeEighteenScreen is first loaded.
class AndroidLargeEighteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeEighteenController());
  }
}
