import '../controller/betsix_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BetsixScreen.
///
/// This class ensures that the BetsixController is created when the
/// BetsixScreen is first loaded.
class BetsixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetsixController());
  }
}
