import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:produtos_crud/app/domain/entities/produtos.dart';
import 'package:produtos_crud/app/domain/services/produtos_services.dart';

import '../my_app.dart';

part 'produto_list_back.g.dart';

class ProdutoListBack = _ProdutoListBack with _$ProdutoListBack;

abstract class _ProdutoListBack with Store{
  var _service = GetIt.I.get<ProdutoService>();

  @observable
  Future<List<Produto>> list;

  @action 
  refreshList([dynamic value]){
    list = _service.find();
  }

  _ProdutoListBack() {
    refreshList();
  }

  goToForm(BuildContext context, [Produto produto]) {
    Navigator.of(context).pushNamed(MyApp.PRODUTO_FORM, arguments: produto).then(refreshList);
  }

  goToDetails(BuildContext context, Produto produto){
    Navigator.of(context).pushNamed(MyApp.PRODUTO_DETAILS, arguments: produto);
  }

  remove(int id){
    _service.remove(id);
    refreshList();
  }
}