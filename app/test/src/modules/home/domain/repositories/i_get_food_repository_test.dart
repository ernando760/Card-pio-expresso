import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_food_repository.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/mocks.dart';

class GetFoodRepository extends Mock implements IGetFoodRepository {}

void main() {
  final IGetFoodRepository repository = GetFoodRepository();

  test("Quando fazer a busca de um alimento deve retonar um alimento",
      () async {
    when(() => repository.call(foodId: any(named: "foodId")))
        .thenAnswer((_) async => Right(foodsMock.first));

    final result = await repository.call(foodId: "foodId");

    final food = result.fold((l) => null, (r) => r);

    expect(food, isNotNull);
    expect(food, isA<FoodEntity>());
    expect(food?.name, equals("name 0"));
  });

  test("Quando fazer a busca de um alimento deve retonar um nulo", () async {
    when(() => repository.call(foodId: any(named: "foodId")))
        .thenAnswer((_) async => const Right(null));

    final result = await repository.call(foodId: "foodId");

    final food = result.fold((l) => null, (r) => r);

    expect(food, isNull);
    expect(food, isA<FoodEntity?>());
  });

  test(
      "Quando fazer a busca de um alimento deve retonar uma messagem error => 'Error ao buscar o alimento'",
      () async {
    when(() => repository.call(foodId: any(named: "foodId"))).thenAnswer(
        (_) async =>
            Left(GetFoodException(message: "Error ao buscar o alimento")));

    final result = await repository.call(foodId: "foodId");

    final error = result.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("Error ao buscar o alimento"));
    expect(error, isA<IFoodsException>());
  });
}
