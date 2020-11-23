import 'package:commandaapp/models/pedido.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detalhe_usuario_controller.g.dart';

@Injectable()
class DetalheUsuarioController = _DetalheUsuarioControllerBase
    with _$DetalheUsuarioController;

abstract class _DetalheUsuarioControllerBase with Store {
  final empresaStore = Modular.get<EmpresaStore>();

  @computed
  List<Pedido> get pedidos => empresaStore?.comanda?.pedidos ?? [];
}
