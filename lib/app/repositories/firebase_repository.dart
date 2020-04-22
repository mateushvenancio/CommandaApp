import 'package:commandaapp/app/repositories/repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRepository extends IRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  facebookLogin() {
    return null;
  }

  @override
  googleLogin() {
    return null;
  }

  @override
  logout() {
    FirebaseAuth.instance.signOut();
  }
}
