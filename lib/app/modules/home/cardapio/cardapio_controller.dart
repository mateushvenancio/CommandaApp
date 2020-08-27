import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'cardapio_controller.g.dart';

class CardapioController = _CardapioControllerBase with _$CardapioController;

abstract class _CardapioControllerBase with Store {
  final authStore = Modular.get<EmpresaStore>();

  @computed
  bool get empresaExiste => authStore.empresa != null;
}
