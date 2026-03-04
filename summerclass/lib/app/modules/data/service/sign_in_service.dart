import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:summerclass/app/modules/data/model/user_model.dart';

class SignInService {
  final auth = fb.FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  SignInService();

  Future<User?> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();
      return googleUser != null
          ? await _signIn(googleUser)
          : null;
    } catch (e) {
      return null;
    }
  }

  Future<User?> _signIn(GoogleSignInAccount googleUser) async {
    try {
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final credential = fb.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await auth.signInWithCredential(credential);
      return _getFirebaseAuthUser();
    } catch (e) {
      return null;
    }
  }

  User? _getFirebaseAuthUser() {
    fb.User? user = auth.currentUser;
    if (user == null) return null;

    return User(
      id: user.uid,
      name: user.displayName ?? "",
      email: user.email?? ""
    );
  }
}