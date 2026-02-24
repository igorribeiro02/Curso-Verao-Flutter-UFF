import 'package:get/get.dart';
class SplashBindings implements Bindings {

@override
void dependencies() {
  Get.lazyPut<SplashController>(
    () => SplashController(),
  );

}