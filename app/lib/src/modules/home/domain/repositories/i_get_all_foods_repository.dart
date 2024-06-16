import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:core_module/core_module.dart';

abstract class IGetAllFoodsRepository {
  FutureResult<IFoodsException, List<FoodEntity>> call();
}
