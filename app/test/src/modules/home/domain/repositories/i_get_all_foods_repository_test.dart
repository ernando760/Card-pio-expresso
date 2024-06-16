import 'package:app/src/modules/home/domain/exceptions/foods_exceptions.dart';
import 'package:app/src/modules/home/domain/repositories/i_get_all_foods_repository.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/mocks.dart';

class GetAllFoodsRespositoryMock extends Mock
    implements IGetAllFoodsRepository {}

void main() {
  final IGetAllFoodsRepository repository = GetAllFoodsRespositoryMock();
  test(
      'Quando fazer as busca dos alimentos deve retonar uma lista de alimentos',
      () async {
    when(() => repository.call()).thenAnswer((_) async => Right(foodsMock));

    final res = await repository.call();

    final foods = res.fold((l) => null, (r) => r);

    expect(foods, isNotNull);
    expect(foods?.length, foodsMock.length);
  });

  test(
      'Quando fazer as busca dos produtos deve retonar uma messagem de error => "Error ao buscar os produtos"',
      () async {
    when(() => repository.call()).thenAnswer((_) async =>
        Left(GetAllFoodsException(message: "Error ao buscar os produtos")));

    final res = await repository.call();

    final error = res.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("Error ao buscar os produtos"));
  });
}
