import 'package:app/src/modules/home/data/models/food_model.dart';
import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_all_foods_repository.dart';
import 'package:app/src/modules/shared/exceptions/http_client_exception.dart';
import 'package:core_module/core_module.dart';

class GetAllFoodsRepository implements IGetAllFoodsRepository {
  final IHttpClient _client;

  GetAllFoodsRepository(this._client);

  @override
  FutureResult<IFoodsException, List<FoodEntity>> call() async {
    try {
      final res = await _client.get<List<Map<String, dynamic>>>("/foods");

      final foods = res.value
          .map((food) => FoodModel.fromMap(food).toFoodEntity())
          .toList();
      return Right(foods);
    } on HttpClientException catch (e) {
      return Left(GetAllFoodsException(
          label: "GetAllFoodsRepository.call -> ${e.label}",
          message: e.message,
          stackTrace: e.stackTrace));
    } catch (e, s) {
      return Left(GetAllFoodsException(
          label: "GetAllFoodsRepository.call",
          message: e.toString(),
          stackTrace: s));
    }
  }
}
