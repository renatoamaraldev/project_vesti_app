// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$searchproductsintAtom =
      Atom(name: '_HomeControllerBase.searchproductsint');

  @override
  int get searchproductsint {
    _$searchproductsintAtom.reportRead();
    return super.searchproductsint;
  }

  @override
  set searchproductsint(int value) {
    _$searchproductsintAtom.reportWrite(value, super.searchproductsint, () {
      super.searchproductsint = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void updateIntSearchBottom(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.updateIntSearchBottom');
    try {
      return super.updateIntSearchBottom(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchproductsint: ${searchproductsint}
    ''';
  }
}
