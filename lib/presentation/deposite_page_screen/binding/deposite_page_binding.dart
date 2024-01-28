import '../controller/deposite_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DepositePageScreen.
///
/// This class ensures that the DepositePageController is created when the
/// DepositePageScreen is first loaded.
class DepositePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositePageController());
  }
}
