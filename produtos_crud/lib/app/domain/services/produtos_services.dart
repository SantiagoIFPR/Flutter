import 'package:get_it/get_it.dart';
import 'package:produtos_crud/app/domain/entities/produtos.dart';
import 'package:produtos_crud/app/domain/exception/domain_layer_exception.dart';
import 'package:produtos_crud/app/domain/interfaces/produtos_dao.dart';

class ProdutoService {
    var _dao = GetIt.I.get<ProdutosDAO>();

    save(Produto produto){
      validarNome(produto.nome);
      validarQuantidade(produto.quantidade);
      validarValorUnitario(produto.valorunitario);
      _dao.save(produto);
    }

    remove(int id){
      _dao.remove(id);
    }

    Future<List<Produto>>find(){
      return _dao.find();
    }

    validarNome(String nome){
      var min = 3;
      var max = 200;

      if(nome == null){
        throw new DomainLayerException('O nome é obrigatório.');
      }else if(nome.length < min){
        throw new DomainLayerException('O nome deve possuir pelo menos $min caracteres.');
      }else if(nome.length > max){
        throw new DomainLayerException('O nome deve possuir no máximo $max caracteres.');
      }
    }

    validarQuantidade(String quantidade){
      var max = 4;

      if(quantidade == null){
        throw new DomainLayerException('A quantidade é obrigatório.');
      }else if(quantidade.length > max){
        throw new DomainLayerException('A quantidade deve possuir no máximo $max caracteres.');
      }
    }

    validarValorUnitario(String valorunitario){

      if(valorunitario == null){
        throw new DomainLayerException('O valor unitário é obrigatório.');
      }
    }
}