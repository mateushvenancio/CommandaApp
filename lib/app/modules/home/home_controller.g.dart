// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool> _$isLoginValidComputed;

  @override
  bool get isLoginValid =>
      (_$isLoginValidComputed ??= Computed<bool>(() => super.isLoginValid))
          .value;

  final _$isLoadingAtom = Atom(name: '_HomeControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$loginEmailAtom = Atom(name: '_HomeControllerBase.loginEmail');

  @override
  String get loginEmail {
    _$loginEmailAtom.context.enforceReadPolicy(_$loginEmailAtom);
    _$loginEmailAtom.reportObserved();
    return super.loginEmail;
  }

  @override
  set loginEmail(String value) {
    _$loginEmailAtom.context.conditionallyRunInAction(() {
      super.loginEmail = value;
      _$loginEmailAtom.reportChanged();
    }, _$loginEmailAtom, name: '${_$loginEmailAtom.name}_set');
  }

  final _$loginPasswordAtom = Atom(name: '_HomeControllerBase.loginPassword');

  @override
  String get loginPassword {
    _$loginPasswordAtom.context.enforceReadPolicy(_$loginPasswordAtom);
    _$loginPasswordAtom.reportObserved();
    return super.loginPassword;
  }

  @override
  set loginPassword(String value) {
    _$loginPasswordAtom.context.conditionallyRunInAction(() {
      super.loginPassword = value;
      _$loginPasswordAtom.reportChanged();
    }, _$loginPasswordAtom, name: '${_$loginPasswordAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setLoginEmail(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setLoginEmail(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoginPassword(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setLoginPassword(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'isLoading: ${isLoading.toString()},loginEmail: ${loginEmail.toString()},loginPassword: ${loginPassword.toString()},isLoginValid: ${isLoginValid.toString()}';
    return '{$string}';
  }
}
