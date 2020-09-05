// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalhe_usuario_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DetalheUsuarioController = BindInject(
  (i) => DetalheUsuarioController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetalheUsuarioController on _DetalheUsuarioControllerBase, Store {
  final _$valueAtom = Atom(name: '_DetalheUsuarioControllerBase.value');

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

  final _$_DetalheUsuarioControllerBaseActionController =
      ActionController(name: '_DetalheUsuarioControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_DetalheUsuarioControllerBaseActionController
        .startAction(name: '_DetalheUsuarioControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_DetalheUsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
