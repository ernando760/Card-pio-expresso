import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_food_repository.dart';
import 'package:core_module/core_module.dart';

abstract class IGetFoodUsecase {
  FutureResult<IFoodsException, FoodEntity?> call({required String foodId});
}

class GetFoodUsecase implements IGetFoodUsecase {
  final IGetFoodRepository _repository;

  GetFoodUsecase(this._repository);

  @override
  FutureResult<IFoodsException, FoodEntity?> call(
      {required String foodId}) async {
    if (foodId.isEmpty) {
      return Left(GetFoodException(
        label: "[USECASE] => $runtimeType.call",
        message: "O id do produto está vazio",
      ));
    }
    return await _repository.call(foodId: foodId);
  }
}
