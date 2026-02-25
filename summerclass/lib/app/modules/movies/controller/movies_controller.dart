import 'package:get/get.dart';
import 'package:summerclass/app/routes/app_routes.dart';

class MoviesController extends GetxController {
  MoviesController();

  void addNewMovie(String route) {
    Get.toNamed(Routes.MOVIE_FORM);
  }

  final Map<String, String> movieForm = {
    'title': '',
    'Description': '',
    'directors' : '',
    'synopsis' : '',
    'images' : '',
  };
}
