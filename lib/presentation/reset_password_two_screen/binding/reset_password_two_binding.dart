import '../controller/reset_password_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetPasswordTwoScreen.
///
/// This class ensures that the ResetPasswordTwoController is created when the
/// ResetPasswordTwoScreen is first loaded.
class ResetPasswordTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordTwoController());
  }
}
