import '../controller/android_large_twentythree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentythreeScreen.
///
/// This class ensures that the AndroidLargeTwentythreeController is created when the
/// AndroidLargeTwentythreeScreen is first loaded.
class AndroidLargeTwentythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentythreeController());
  }
}
