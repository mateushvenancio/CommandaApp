// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalhe_empresa_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DetalheEmpresaController = BindInject(
  (i) => DetalheEmpresaController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetalheEmpresaController on _DetalheEmpresaControllerBase, Store {
  final _$valueAtom = Atom(name: '_DetalheEmpresaControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_DetalheEmpresaControllerBaseActionController =
      ActionController(name: '_DetalheEmpresaControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_DetalheEmpresaControllerBaseActionController
        .startAction(name: '_DetalheEmpresaControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_DetalheEmpresaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
