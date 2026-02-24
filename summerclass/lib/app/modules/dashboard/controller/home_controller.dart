import 'package:get/get.dart';

class HomePageController extends GetxController {
  HomePageController();

  final _obj = ''.obs;
  set obj(String value) => _obj.value = value;
  get obj => this._obj.value;
}