import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:summerclass/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;

  SplashController();

  RxBool isLoading = false.obs;
  bool isSignedIn = false;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  void _loadData() async {
    isLoading.value = true;
    isSignedIn = _isLoggedIn();
    await Future.delayed(const Duration(seconds: 5));
    isLoading.value = false;
    finishLoading();
  }

  bool _isLoggedIn() {
    return auth.currentUser != null;
  }

  void goToInitialPage() {
    if (!isSignedIn) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }

  void finishLoading() {
    Future.microtask(goToInitialPage);
  }
}