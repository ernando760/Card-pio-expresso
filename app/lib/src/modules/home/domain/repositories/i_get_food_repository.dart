import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:core_module/core_module.dart';

abstract class IGetFoodRepository {
  FutureResult<IFoodsException, FoodEntity?> call({required String foodId});
}
