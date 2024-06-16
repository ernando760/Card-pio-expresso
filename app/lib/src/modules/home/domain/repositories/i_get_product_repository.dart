import 'package:app/src/modules/home/domain/entity/product_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/products_exceptions.dart';
import 'package:core_module/core_module.dart';

abstract class IGetProductRepository {
  FutureResult<IProductsException, ProductEntity?> call(
      {required String productId});
}
