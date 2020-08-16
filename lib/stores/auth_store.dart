import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @observable
  FirebaseUser user;

  @action
  Future<bool> checkIfLoggedIn() async {
    var user = FirebaseAuth.instance.currentUser();
    return user != null;
  }

  @action
  loginWithEmailAndPassword(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
