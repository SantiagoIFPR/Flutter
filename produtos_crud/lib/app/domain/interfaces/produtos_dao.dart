import 'package:produtos_crud/app/domain/entities/produtos.dart';

abstract class ProdutosDAO{
  save(Produto produto);

  remove(int id);

  Future<List<Produto>> find();
}