import 'package:get/get.dart';

class MoviesController extends GetxController {
  MoviesController();

  final obj = ''.obs;
  set obj(value) => obj.value = value;
  get Object => this.obj.value;
}
