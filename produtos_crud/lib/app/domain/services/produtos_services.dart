import 'package:get_it/get_it.dart';
import 'package:produtos_crud/app/domain/interfaces/produtos_dao.dart';

class ProdutoService {
    var dao = GetIt.I.get<ProdutosDAO>();
}