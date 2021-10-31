// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsController on _ProductsControllerBase, Store {
  final _$txtSearchAtom = Atom(name: '_ProductsControllerBase.txtSearch');

  @override
  String get txtSearch {
    _$txtSearchAtom.reportRead();
    return super.txtSearch;
  }

  @override
  set txtSearch(String value) {
    _$txtSearchAtom.reportWrite(value, super.txtSearch, () {
      super.txtSearch = value;
    });
  }

  final _$searchproductsintAtom =
      Atom(name: '_ProductsControllerBase.searchproductsint');

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

  final _$snapshotAtom = Atom(name: '_ProductsControllerBase.snapshot');

  @override
  dynamic get snapshot {
    _$snapshotAtom.reportRead();
    return super.snapshot;
  }

  @override
  set snapshot(dynamic value) {
    _$snapshotAtom.reportWrite(value, super.snapshot, () {
      super.snapshot = value;
    });
  }

  final _$_ProductsControllerBaseActionController =
      ActionController(name: '_ProductsControllerBase');

  @override
  void updateSnapshot(dynamic value) {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.updateSnapshot');
    try {
      return super.updateSnapshot(value);
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateIntSearchBottom(dynamic value) {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.updateIntSearchBottom');
    try {
      return super.updateIntSearchBottom(value);
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTxtSearch(dynamic value) {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.updateTxtSearch');
    try {
      return super.updateTxtSearch(value);
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
txtSearch: ${txtSearch},
searchproductsint: ${searchproductsint},
snapshot: ${snapshot}
    ''';
  }
}
