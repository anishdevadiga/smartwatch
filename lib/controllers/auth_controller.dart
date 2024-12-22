import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle() async {
    // Implement Google Sign-In logic here
  }

  Future<void> signInWithEmail(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed('/dashboard');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAllNamed('/login');
  }
}
