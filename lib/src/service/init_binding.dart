import 'package:get/get.dart';
import 'human_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HumanController());
  }
}
