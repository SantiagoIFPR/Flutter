// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_list_back.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutoListBack on _ProdutoListBack, Store {
  final _$listAtom = Atom(name: '_ProdutoListBack.list');

  @override
  Future<List<Produto>> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(Future<List<Produto>> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$_ProdutoListBackActionController =
      ActionController(name: '_ProdutoListBack');

  @override
  dynamic refreshList([dynamic value]) {
    final _$actionInfo = _$_ProdutoListBackActionController.startAction(
        name: '_ProdutoListBack.refreshList');
    try {
      return super.refreshList(value);
    } finally {
      _$_ProdutoListBackActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list}
    ''';
  }
}
