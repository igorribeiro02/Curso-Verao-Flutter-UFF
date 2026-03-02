import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:summerclass/app/routes/app_routes.dart';

class MoviesController extends GetxController {
  MoviesController();

  final ImagePicker picker = ImagePicker();
  final ValueNotifier<String?> imageNotifier = ValueNotifier(null);

  void addNewMovie(String route) {
    Get.toNamed(Routes.MOVIE_FORM);
  }

  final Map<String, String> movieForm = {
    'title': '',
    'Description': '',
    'directors': '',
    'synopsis': '',
    'images': '',
  };

  Future<void> pickImage() async {
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        imageNotifier.value = image.path; // valor do caminho da imagem selecionada
        movieForm['images'] = image.path; // armazena o caminho da imagem no formulário
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }


}
