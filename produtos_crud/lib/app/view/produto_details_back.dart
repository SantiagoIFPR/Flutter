import 'package:flutter/cupertino.dart';
import 'package:produtos_crud/app/domain/entities/produtos.dart';

class ProdutoDetailsBack{
BuildContext context;
  Produto produto;

  ProdutoDetailsBack(this.context){
    produto = ModalRoute.of(context).settings.arguments;
  }

  goToBack(){
    Navigator.of(context).pop();
  }
}