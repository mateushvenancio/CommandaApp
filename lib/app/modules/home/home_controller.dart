import 'package:commandaapp/app/repositories/firebase_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:email_validator/email_validator.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final firebase = Modular.get<FirebaseRepository>();

  @observable
  bool isLoading = false;

  @observable
  String loginEmail = '';

  @observable
  String loginPassword = '';

  @action
  void setLoginEmail(String value) => loginEmail = value;

  @action
  void setLoginPassword(String value) => loginPassword = value;

  @computed
  bool get isLoginValid =>
      EmailValidator.validate(loginEmail) && loginPassword.length >= 6;

  @action
  login(context) async {
    isLoading = true;

    bool success = await firebase.loginWithEmailAndPassword(
      loginEmail,
      loginPassword,
    );

    if (success) {
      isLoading = false;
      Modular.to.pushReplacementNamed('/main');
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        backgroundColor: Theme.of(context).primaryColor,
        content: Text(
          'Usuário inexistente.',
          style: TextStyle(color: Colors.white),
        ),
      ));
    }
    isLoading = false;
  }

  //register

  @observable
  String registerEmail = '';

  @observable
  String registerPassword = '';

  @observable
  String registerConfirmPassword = '';

  @observable
  String registerName = '';

  @computed
  bool get passwordMatch => registerPassword == registerConfirmPassword;

  @computed
  bool get isRegisterFormValid =>
      EmailValidator.validate(registerEmail) &&
      registerPassword.length >= 6 &&
      passwordMatch;

  @action
  setRegisterEmail(String value) => registerEmail = value;

  @action
  setRegisterPassword(String value) => registerPassword = value;

  @action
  setRegisterConfirmPassword(String value) => registerConfirmPassword = value;

  @action
  setRegisterName(String value) => registerName = value;

  @action
  register(context) async {
    isLoading = true;

    bool success = await firebase.registerWithEmailAndPassword(
      registerEmail,
      registerPassword,
    );

    if (success) {
      isLoading = false;
      Modular.to.pushReplacementNamed('/main');
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        backgroundColor: Theme.of(context).primaryColor,
        content: Text(
          'Deu algum erro. Você pode já ter uma conta ou sua senha pode ser fraca.',
          style: TextStyle(color: Colors.white),
          overflow: TextOverflow.fade,
        ),
      ));
    }
    isLoading = false;
  }
}

class ChildrenPageController extends InheritedWidget {
  final Widget child;
  final PageController pageController;
  final HomeController homeController;

  ChildrenPageController({
    this.pageController,
    this.child,
    this.homeController,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }

  animateTo(int page) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  static ChildrenPageController of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ChildrenPageController>();
}
