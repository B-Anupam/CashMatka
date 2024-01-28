import 'package:get/get.dart';
import './double_patti_controller.dart';

class DoublePattiBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DoublePattiController());
    }
}