// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainPageController on _MainPageControllerBase, Store {
  final _$currentPageAtom = Atom(name: '_MainPageControllerBase.currentPage');

  @override
  Widget get currentPage {
    _$currentPageAtom.context.enforceReadPolicy(_$currentPageAtom);
    _$currentPageAtom.reportObserved();
    return super.currentPage;
  }

  @override
  set currentPage(Widget value) {
    _$currentPageAtom.context.conditionallyRunInAction(() {
      super.currentPage = value;
      _$currentPageAtom.reportChanged();
    }, _$currentPageAtom, name: '${_$currentPageAtom.name}_set');
  }

  final _$_MainPageControllerBaseActionController =
      ActionController(name: '_MainPageControllerBase');

  @override
  void changePage(int index) {
    final _$actionInfo =
        _$_MainPageControllerBaseActionController.startAction();
    try {
      return super.changePage(index);
    } finally {
      _$_MainPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'currentPage: ${currentPage.toString()}';
    return '{$string}';
  }
}
