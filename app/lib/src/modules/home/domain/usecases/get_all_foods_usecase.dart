import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_all_foods_repository.dart';
import 'package:core_module/core_module.dart';

abstract class IGetAllFoodsUsecase {
  FutureResult<IFoodsException, List<FoodEntity>> call();
}

class GetAllFoodsUsecase implements IGetAllFoodsUsecase {
  final IGetAllFoodsRepository _repository;

  GetAllFoodsUsecase(this._repository);

  @override
  FutureResult<IFoodsException, List<FoodEntity>> call() async =>
      await _repository.call();
}
