import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detalhe_usuario_controller.g.dart';

@Injectable()
class DetalheUsuarioController = _DetalheUsuarioControllerBase
    with _$DetalheUsuarioController;

abstract class _DetalheUsuarioControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
