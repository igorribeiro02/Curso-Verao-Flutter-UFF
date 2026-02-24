import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}