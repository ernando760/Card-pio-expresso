import 'package:app/src/modules/home/data/models/food_model.dart';
import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_food_repository.dart';
import 'package:app/src/modules/shared/exceptions/http_client_exception.dart';
import 'package:core_module/core_module.dart';

class GetFoodRepository implements IGetFoodRepository {
  final IHttpClient _client;

  GetFoodRepository(this._client);

  @override
  FutureResult<IFoodsException, FoodEntity?> call(
      {required String foodId}) async {
    try {
      final res = await _client.get<Map<String, dynamic>>("/foods/$foodId");

      final food = FoodModel.fromMap(res.value).toFoodEntity();

      return Right(food);
    } on HttpClientException catch (e) {
      return Left(GetFoodException(
          label: "GetFoodRepository.call -> ${e.label}",
          message: e.message,
          stackTrace: e.stackTrace));
    } catch (e, s) {
      return Left(GetFoodException(
          label: "GetFoodRepository.call",
          message: e.toString(),
          stackTrace: s));
    }
  }
}
