// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<Usuario> _$usuarioComputed;

  @override
  Usuario get usuario =>
      (_$usuarioComputed ??= Computed<Usuario>(() => super.usuario,
              name: '_HomeControllerBase.usuario'))
          .value;
  Computed<bool> _$empresaExisteComputed;

  @override
  bool get empresaExiste =>
      (_$empresaExisteComputed ??= Computed<bool>(() => super.empresaExiste,
              name: '_HomeControllerBase.empresaExiste'))
          .value;

  final _$isLoadingAtom = Atom(name: '_HomeControllerBase.isLoading');

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

  final _$hintAtom = Atom(name: '_HomeControllerBase.hint');

  @override
  String get hint {
    _$hintAtom.reportRead();
    return super.hint;
  }

  @override
  set hint(String value) {
    _$hintAtom.reportWrite(value, super.hint, () {
      super.hint = value;
    });
  }

  final _$setEmpresaELugarAsyncAction =
      AsyncAction('_HomeControllerBase.setEmpresaELugar');

  @override
  Future setEmpresaELugar(String value) {
    return _$setEmpresaELugarAsyncAction
        .run(() => super.setEmpresaELugar(value));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
hint: ${hint},
usuario: ${usuario},
empresaExiste: ${empresaExiste}
    ''';
  }
}
