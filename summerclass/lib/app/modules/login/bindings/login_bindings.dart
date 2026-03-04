import 'package:get/get.dart';
import 'package:summerclass/app/modules/login/controller/login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}