import 'package:app/src/modules/home/domain/entity/product_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/products_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_all_products_repository.dart';
import 'package:core_module/core_module.dart';

abstract class IGetAllProductsUsecase {
  FutureResult<IProductsException, List<ProductEntity>> call();
}

class GetAllProductsUsecase implements IGetAllProductsUsecase {
  final IGetAllProductsRepository _repository;

  GetAllProductsUsecase(this._repository);

  @override
  FutureResult<IProductsException, List<ProductEntity>> call() async =>
      await _repository.call();
}
