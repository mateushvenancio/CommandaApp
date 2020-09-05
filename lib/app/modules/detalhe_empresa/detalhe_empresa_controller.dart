import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detalhe_empresa_controller.g.dart';

@Injectable()
class DetalheEmpresaController = _DetalheEmpresaControllerBase
    with _$DetalheEmpresaController;

abstract class _DetalheEmpresaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
