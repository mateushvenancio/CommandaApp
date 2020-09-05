// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmpresaStore on _EmpresaStoreBase, Store {
  final _$empresaAtom = Atom(name: '_EmpresaStoreBase.empresa');

  @override
  Empresa get empresa {
    _$empresaAtom.reportRead();
    return super.empresa;
  }

  @override
  set empresa(Empresa value) {
    _$empresaAtom.reportWrite(value, super.empresa, () {
      super.empresa = value;
    });
  }

  final _$produtosAtom = Atom(name: '_EmpresaStoreBase.produtos');

  @override
  List<MenuItem> get produtos {
    _$produtosAtom.reportRead();
    return super.produtos;
  }

  @override
  set produtos(List<MenuItem> value) {
    _$produtosAtom.reportWrite(value, super.produtos, () {
      super.produtos = value;
    });
  }

  final _$comandaAtom = Atom(name: '_EmpresaStoreBase.comanda');

  @override
  Comanda get comanda {
    _$comandaAtom.reportRead();
    return super.comanda;
  }

  @override
  set comanda(Comanda value) {
    _$comandaAtom.reportWrite(value, super.comanda, () {
      super.comanda = value;
    });
  }

  final _$getComandaAsyncAction = AsyncAction('_EmpresaStoreBase.getComanda');

  @override
  Future getComanda(String lugar) {
    return _$getComandaAsyncAction.run(() => super.getComanda(lugar));
  }

  final _$getEmpresaAsyncAction = AsyncAction('_EmpresaStoreBase.getEmpresa');

  @override
  Future getEmpresa(String id) {
    return _$getEmpresaAsyncAction.run(() => super.getEmpresa(id));
  }

  final _$addPedidoAsyncAction = AsyncAction('_EmpresaStoreBase.addPedido');

  @override
  Future addPedido(Pedido pedido) {
    return _$addPedidoAsyncAction.run(() => super.addPedido(pedido));
  }

  @override
  String toString() {
    return '''
empresa: ${empresa},
produtos: ${produtos},
comanda: ${comanda}
    ''';
  }
}
