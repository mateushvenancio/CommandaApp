import 'package:commandaapp/app/modules/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'continue_controller.g.dart';

class ContinueController = _ContinueControllerBase with _$ContinueController;

abstract class _ContinueControllerBase with Store {
  final authStore = Modular.get<AuthController>();
}
