import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:produtos_crud/app/domain/entities/produtos.dart';
import 'package:produtos_crud/app/domain/services/produtos_services.dart';

class ProdutoFormBack{
  Produto produto;
  var _service = GetIt.I.get<ProdutoService>();
  bool _nameIsValid;
  bool _quantidadeIsValid;
  bool _valorunitarioIsValid;

  bool get isValid => _nameIsValid && _quantidadeIsValid && _valorunitarioIsValid;
  //Diferenciar novo com alteração
  //Serviço de domínio dá acesso as funcionalidades do negócio.
  ProdutoFormBack(BuildContext context) {
    var parameter = ModalRoute.of(context).settings.arguments;
    produto = (parameter == null) ? Produto() : parameter;
  }

  //salvar
  save() async {
    await _service.save(produto);
  }

  //Fazer validações específicas
  String validateNome(String nome) {
    try {
      _service.validarNome(nome);
      _nameIsValid = true;
      return null;
    } catch (e) {
      _nameIsValid = false;
      return e.toString();
    }
  }

  String validateQuantidade(String quantidade) {
    try {
      _service.validarQuantidade(quantidade);
      _quantidadeIsValid = true;
      return null;
    } catch (e) {
      _quantidadeIsValid = false;
      return e.toString();
    }
  }

  String validateValorUnitario(String valorunitario) {
    try {
      _service.validarValorUnitario(valorunitario);
      _valorunitarioIsValid = true;
      return null;
    } catch (e) {
      _valorunitarioIsValid = false;
      return e.toString();
    }
  }
}
