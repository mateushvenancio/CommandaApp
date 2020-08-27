// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  Computed<bool> _$loggedComputed;

  @override
  bool get logged => (_$loggedComputed ??=
          Computed<bool>(() => super.logged, name: '_AuthStoreBase.logged'))
      .value;

  final _$userAtom = Atom(name: '_AuthStoreBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$usuarioAtom = Atom(name: '_AuthStoreBase.usuario');

  @override
  Usuario get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(Usuario value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  final _$loginWithEmailAndPasswordAsyncAction =
      AsyncAction('_AuthStoreBase.loginWithEmailAndPassword');

  @override
  Future loginWithEmailAndPassword(String email, String password) {
    return _$loginWithEmailAndPasswordAsyncAction
        .run(() => super.loginWithEmailAndPassword(email, password));
  }

  final _$getUserAsyncAction = AsyncAction('_AuthStoreBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getUsuarioAsyncAction = AsyncAction('_AuthStoreBase.getUsuario');

  @override
  Future getUsuario() {
    return _$getUsuarioAsyncAction.run(() => super.getUsuario());
  }

  @override
  String toString() {
    return '''
user: ${user},
usuario: ${usuario},
logged: ${logged}
    ''';
  }
}
