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
  Computed<bool> _$passwordMatchComputed;

  @override
  bool get passwordMatch =>
      (_$passwordMatchComputed ??= Computed<bool>(() => super.passwordMatch))
          .value;
  Computed<bool> _$isRegisterFormValidComputed;

  @override
  bool get isRegisterFormValid => (_$isRegisterFormValidComputed ??=
          Computed<bool>(() => super.isRegisterFormValid))
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

  final _$registerEmailAtom = Atom(name: '_HomeControllerBase.registerEmail');

  @override
  String get registerEmail {
    _$registerEmailAtom.context.enforceReadPolicy(_$registerEmailAtom);
    _$registerEmailAtom.reportObserved();
    return super.registerEmail;
  }

  @override
  set registerEmail(String value) {
    _$registerEmailAtom.context.conditionallyRunInAction(() {
      super.registerEmail = value;
      _$registerEmailAtom.reportChanged();
    }, _$registerEmailAtom, name: '${_$registerEmailAtom.name}_set');
  }

  final _$registerPasswordAtom =
      Atom(name: '_HomeControllerBase.registerPassword');

  @override
  String get registerPassword {
    _$registerPasswordAtom.context.enforceReadPolicy(_$registerPasswordAtom);
    _$registerPasswordAtom.reportObserved();
    return super.registerPassword;
  }

  @override
  set registerPassword(String value) {
    _$registerPasswordAtom.context.conditionallyRunInAction(() {
      super.registerPassword = value;
      _$registerPasswordAtom.reportChanged();
    }, _$registerPasswordAtom, name: '${_$registerPasswordAtom.name}_set');
  }

  final _$registerConfirmPasswordAtom =
      Atom(name: '_HomeControllerBase.registerConfirmPassword');

  @override
  String get registerConfirmPassword {
    _$registerConfirmPasswordAtom.context
        .enforceReadPolicy(_$registerConfirmPasswordAtom);
    _$registerConfirmPasswordAtom.reportObserved();
    return super.registerConfirmPassword;
  }

  @override
  set registerConfirmPassword(String value) {
    _$registerConfirmPasswordAtom.context.conditionallyRunInAction(() {
      super.registerConfirmPassword = value;
      _$registerConfirmPasswordAtom.reportChanged();
    }, _$registerConfirmPasswordAtom,
        name: '${_$registerConfirmPasswordAtom.name}_set');
  }

  final _$registerNameAtom = Atom(name: '_HomeControllerBase.registerName');

  @override
  String get registerName {
    _$registerNameAtom.context.enforceReadPolicy(_$registerNameAtom);
    _$registerNameAtom.reportObserved();
    return super.registerName;
  }

  @override
  set registerName(String value) {
    _$registerNameAtom.context.conditionallyRunInAction(() {
      super.registerName = value;
      _$registerNameAtom.reportChanged();
    }, _$registerNameAtom, name: '${_$registerNameAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future login(dynamic context) {
    return _$loginAsyncAction.run(() => super.login(context));
  }

  final _$registerAsyncAction = AsyncAction('register');

  @override
  Future register(dynamic context) {
    return _$registerAsyncAction.run(() => super.register(context));
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
  dynamic setRegisterEmail(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setRegisterEmail(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setRegisterPassword(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setRegisterPassword(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setRegisterConfirmPassword(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setRegisterConfirmPassword(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setRegisterName(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setRegisterName(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'isLoading: ${isLoading.toString()},loginEmail: ${loginEmail.toString()},loginPassword: ${loginPassword.toString()},registerEmail: ${registerEmail.toString()},registerPassword: ${registerPassword.toString()},registerConfirmPassword: ${registerConfirmPassword.toString()},registerName: ${registerName.toString()},isLoginValid: ${isLoginValid.toString()},passwordMatch: ${passwordMatch.toString()},isRegisterFormValid: ${isRegisterFormValid.toString()}';
    return '{$string}';
  }
}
