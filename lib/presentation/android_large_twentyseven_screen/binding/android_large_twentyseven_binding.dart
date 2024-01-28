import '../controller/android_large_twentyseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentysevenScreen.
///
/// This class ensures that the AndroidLargeTwentysevenController is created when the
/// AndroidLargeTwentysevenScreen is first loaded.
class AndroidLargeTwentysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentysevenController());
  }
}
