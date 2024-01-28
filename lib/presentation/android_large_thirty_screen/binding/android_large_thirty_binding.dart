import '../controller/android_large_thirty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeThirtyScreen.
///
/// This class ensures that the AndroidLargeThirtyController is created when the
/// AndroidLargeThirtyScreen is first loaded.
class AndroidLargeThirtyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeThirtyController());
  }
}
