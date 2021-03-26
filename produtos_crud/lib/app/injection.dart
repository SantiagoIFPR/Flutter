import 'package:get_it/get_it.dart';
import 'package:produtos_crud/app/database/sqlite/dao/produto_dao_impl.dart';
import 'package:produtos_crud/app/domain/interfaces/produtos_dao.dart';

setupInjection(){
  GetIt getit = GetIt.I;

  getit.registerSingleton<ProdutosDAO>(ProdutosDAOImpl());
}