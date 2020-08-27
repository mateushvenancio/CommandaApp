import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/models/usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  init() async {
    await getUser();
    if (user != null) await getUsuario();
  }

  @observable
  User user;
  @observable
  Usuario usuario;

  @computed
  bool get logged => user != null;

  @action
  loginWithEmailAndPassword(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @action
  getUser() async {
    user = FirebaseAuth.instance.currentUser;
  }

  @action
  getUsuario() async {
    var _dSn = await FirebaseFirestore.instance
        .collection('usuarios')
        .doc(user.uid)
        .get();
    usuario = Usuario.fromJson(_dSn.data());
  }
}
