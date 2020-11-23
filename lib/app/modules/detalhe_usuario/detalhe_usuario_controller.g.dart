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
  Computed<List<Pedido>> _$pedidosComputed;

  @override
  List<Pedido> get pedidos =>
      (_$pedidosComputed ??= Computed<List<Pedido>>(() => super.pedidos,
              name: '_DetalheUsuarioControllerBase.pedidos'))
          .value;

  @override
  String toString() {
    return '''
pedidos: ${pedidos}
    ''';
  }
}
