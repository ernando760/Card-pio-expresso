import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/usecases/get_all_foods_usecase.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/mocks.dart';

class GetAllFoodsUsecaseMock extends Mock implements IGetAllFoodsUsecase {}

void main() {
  final IGetAllFoodsUsecase usecase = GetAllFoodsUsecaseMock();
  test('Quando fazer as busca dos produtos deve retonar uma lista de produtos',
      () async {
    when(() => usecase.call()).thenAnswer((_) async => Right(foodsMock));

    final res = await usecase.call();

    final foods = res.fold((l) => null, (r) => r);

    expect(foods, isNotNull);
    expect(foods?.length, foodsMock.length);
  });

  test(
      'Quando fazer as busca dos produtos deve retonar uma messagem de error => "Error ao buscar os produtos"',
      () async {
    when(() => usecase.call()).thenAnswer((_) async =>
        Left(GetAllFoodsException(message: "Error ao buscar os produtos")));

    final res = await usecase.call();

    final error = res.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("Error ao buscar os produtos"));
  });
}
