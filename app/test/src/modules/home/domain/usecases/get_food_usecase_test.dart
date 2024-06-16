import 'package:app/src/modules/home/domain/entity/food_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/usecases/get_foods_usecase.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/mocks.dart';

class GetFoodUsecaseMock extends Mock implements IGetFoodUsecase {}

void main() {
  final IGetFoodUsecase usecase = GetFoodUsecaseMock();

  test("Quando fazer a busca de um produto deve retonar um produto", () async {
    when(() => usecase.call(foodId: any(named: "foodId")))
        .thenAnswer((_) async => Right(foodsMock.first));

    final result = await usecase.call(foodId: "foodId");

    final food = result.fold((l) => null, (r) => r);

    expect(food, isNotNull);
    expect(food, isA<FoodEntity>());
    expect(food?.name, equals("name 0"));
  });

  test("Quando fazer a busca de um produto deve retonar um nulo", () async {
    when(() => usecase.call(foodId: any(named: "foodId")))
        .thenAnswer((_) async => const Right(null));

    final result = await usecase.call(foodId: "foodId");

    final food = result.fold((l) => null, (r) => r);

    expect(food, isNull);
    expect(food, isA<FoodEntity?>());
  });

  test(
      "Quando fazer a busca de um produto deve retonar uma messagem error => 'O id do produto está vazio'",
      () async {
    when(() => usecase.call(foodId: "")).thenAnswer((_) async =>
        Left(GetFoodException(message: "O id do produto está vazio")));

    final result = await usecase.call(foodId: "");

    final error = result.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("O id do produto está vazio"));
    expect(error, isA<IFoodsException>());
  });

  test(
      "Quando fazer a busca de um produto deve retonar uma messagem error => 'Error ao buscar o produto'",
      () async {
    when(() => usecase.call(foodId: any(named: "foodId"))).thenAnswer(
        (_) async =>
            Left(GetAllFoodsException(message: "Error ao buscar o produto")));

    final result = await usecase.call(foodId: "foodId");

    final error = result.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("Error ao buscar o produto"));
    expect(error, isA<IFoodsException>());
  });
}
