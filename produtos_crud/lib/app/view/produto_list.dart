import 'package:flutter/material.dart';
import 'package:produtos_crud/app/my_app.dart';

class ProdutoList extends StatelessWidget {
  final lista=[
    {'nome':'Santiago','telefone':'(44)99766-0895','avatar':'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'},
    {'nome':'Karen','telefone':'(44)99826-4674','avatar':'https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027367_960_720.png'},
    {'nome':'Manuela','telefone':'(44)98828-6889','avatar':'https://cdn.pixabay.com/photo/2021/03/12/08/01/child-6089047_960_720.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Produtos"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.of(context).pushNamed(MyApp.PRODUTO_FORM);
            },
          )
        ],
        ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i){
          var produto = lista[i];
          var avatar = CircleAvatar(backgroundImage: NetworkImage(produto['avatar']));
          return ListTile(
            leading: avatar,
            title: Text(produto['nome']),
            subtitle: Text(produto['telefone']),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: null,),
                  IconButton(icon: Icon(Icons.delete), onPressed: null,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}