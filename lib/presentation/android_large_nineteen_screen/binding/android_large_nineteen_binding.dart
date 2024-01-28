import '../controller/android_large_nineteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeNineteenScreen.
///
/// This class ensures that the AndroidLargeNineteenController is created when the
/// AndroidLargeNineteenScreen is first loaded.
class AndroidLargeNineteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeNineteenController());
  }
}
