import 'package:produtos_crud/app/database/sqlite/connection.dart';
import 'package:produtos_crud/app/domain/entities/produtos.dart';
import 'package:produtos_crud/app/domain/interfaces/produtos_dao.dart';
import 'package:sqflite/sqflite.dart';

class ProdutosDAOImpl implements ProdutosDAO {
  Database _db;

  @override
  Future<List<Produto>> find() async {
    _db = await Connection.get();
    List<Map<String, dynamic>> resultado = await _db.query('produto');
    List<Produto> lista = List.generate(resultado.length, (i) {
      var linha = resultado[i];
      return Produto(
          id: linha['id'],
          nome: linha['nome'],
          quantidade: linha['quantidade'],
          valorunitario: linha['valorunitario'],
          urlAvatar: linha['url_avatar']);
    });
    return lista;
  }

  @override
  remove(int id) async {
    _db = await Connection.get();
    var sql = 'DELETE FROM produto WHERE id = ?';
    _db.rawDelete(sql, [id]);
  }

  @override
  save(Produto produto) async {
    _db = await Connection.get();
    var sql;
    if (produto.id == null) {
      sql =
          'INSERT INTO produto (nome,quantidade,valorunitario,url_avatar) VALUES(?,?,?,?,?)';
      _db.rawInsert(sql, [
        produto.nome,
        produto.quantidade,
        produto.valorunitario,
        produto.urlAvatar
      ]);
    } else {
      sql =
          'UPDATE produto SET nome = ?, quantidade = ?, valorunitario = ?, url_avatar = ? WHERE id = ?';
      _db.rawUpdate(sql, [
        produto.nome,
        produto.quantidade,
        produto.valorunitario,
        produto.urlAvatar
      ]);
    }
  }
}
