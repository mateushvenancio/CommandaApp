import 'package:commandaapp/model/empresa.dart';
import 'package:mobx/mobx.dart';
part 'empresa_store.g.dart';

class EmpresaStore = _EmpresaStoreBase with _$EmpresaStore;

abstract class _EmpresaStoreBase with Store {
  @observable
  Empresa empresa;

  @action
  getEmpresa() async {}
}
