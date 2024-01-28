import '../controller/android_large_twentyfive_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentyfiveScreen.
///
/// This class ensures that the AndroidLargeTwentyfiveController is created when the
/// AndroidLargeTwentyfiveScreen is first loaded.
class AndroidLargeTwentyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentyfiveController());
  }
}
