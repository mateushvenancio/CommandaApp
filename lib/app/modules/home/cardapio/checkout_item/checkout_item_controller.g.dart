// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CheckoutItemController on _CheckoutItemControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_CheckoutItemControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fazerNovoPedidoAsyncAction =
      AsyncAction('_CheckoutItemControllerBase.fazerNovoPedido');

  @override
  Future fazerNovoPedido(MenuItem item, int quantidade) {
    return _$fazerNovoPedidoAsyncAction
        .run(() => super.fazerNovoPedido(item, quantidade));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
