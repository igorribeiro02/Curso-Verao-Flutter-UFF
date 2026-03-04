import 'package:get/get.dart';
import 'package:summerclass/app/modules/data/model/user_model.dart';
import 'package:summerclass/app/modules/data/repository/user_repository.dart';
import 'package:summerclass/app/modules/data/service/sign_in_service.dart';
import '../../../routes/app_routes.dart';


class LoginController extends GetxController {
  final UserRepository _repository = UserRepository();
  final SignInService _signInService = SignInService();
  RxBool isLoading = false.obs;

  Future<void> trySignInWithGoogle() async {
    isLoading(true);
    try {
      User? user = await _signInService.signInWithGoogle();
      if (user != null) {
        await _saveUser(user);
        _goToHomePage();
      }
    } finally {
      isLoading(false);
    }
  }

  Future<void> _saveUser(User user) async {
    User? isSaved = await _repository.getUser(user.id);
    if (isSaved == null) {
      await _repository.addUser(user);
    }
  }

  _goToHomePage() {
    Get.offAllNamed(Routes.HOME);
  }
}