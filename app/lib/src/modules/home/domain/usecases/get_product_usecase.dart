import 'package:app/src/modules/home/domain/entity/product_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/products_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_product_repository.dart';
import 'package:core_module/core_module.dart';

abstract class IGetProductUsecase {
  FutureResult<IProductsException, ProductEntity?> call(
      {required String productId});
}

class GetProductUsecase implements IGetProductUsecase {
  final IGetProductRepository _repository;

  GetProductUsecase(this._repository);

  @override
  FutureResult<IProductsException, ProductEntity?> call(
      {required String productId}) async {
    if (productId.isEmpty) {
      return Left(GetProductException(
        label: "[USECASE] => $runtimeType.call",
        message: "O id do produto está vazio",
      ));
    }
    return await _repository.call(productId: productId);
  }
}
