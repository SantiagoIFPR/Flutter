import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:produtos_crud/app/view/produto_form_back.dart';

class ProdutoForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  

  Widget fieldName(ProdutoFormBack back) {
    return TextFormField(
        validator: back.validateNome,
        onSaved: (newValue) => back.produto.nome = newValue,
        initialValue: back.produto.nome,
        decoration: InputDecoration(labelText: 'Nome: '));
  }

  Widget fieldQuantidade(ProdutoFormBack back) {
    return TextFormField(
        validator: back.validateQuantidade,
        onSaved: (newValue) => back.produto.quantidade = newValue,
        initialValue: back.produto.quantidade,
        decoration: InputDecoration(labelText: 'Quantidade: '));
  }

  Widget fieldValorUnitario(ProdutoFormBack back) {
    var mask = MaskTextInputFormatter(mask: '##.##');
    return TextFormField(
        validator: back.validateValorUnitario,
        onSaved: (newValue) => back.produto.valorunitario = newValue,
        initialValue: back.produto.valorunitario,
        inputFormatters: [mask],
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Valor Unitário: '));
  }

  Widget fieldURLImage(ProdutoFormBack back) {
    return TextFormField(
        onSaved: (newValue) => back.produto.urlAvatar = newValue,
        initialValue: back.produto.urlAvatar,
        decoration: InputDecoration(
            labelText: 'Endereço Foto: ', hintText: 'http://www.site.com'));
  }

  @override
  Widget build(BuildContext context) {
    var _back = ProdutoFormBack(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produtos'),
        actions: [
          IconButton(
            icon: Icon(Icons.save), 
            onPressed: (){
              _form.currentState.validate();
              _form.currentState.save();
              if (_back.isValid){
                _back.save();
                Navigator.of(context).pop();
              }
            }
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
            key: _form,
            child: Column(
          children: [
            fieldName(_back),
            fieldQuantidade(_back),
            fieldValorUnitario(_back),
            fieldURLImage(_back)
          ],
        )),
      ),
    );
  }
}
