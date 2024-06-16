import 'package:app/src/modules/home/domain/exceptions/products_exceptions.dart';
import 'package:app/src/modules/home/domain/usecases/get_all_products_usecase.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/mocks.dart';

class GetAllProductsUsecaseMock extends Mock
    implements IGetAllProductsUsecase {}

void main() {
  final IGetAllProductsUsecase usecase = GetAllProductsUsecaseMock();
  test('Quando fazer as busca dos produtos deve retonar uma lista de produtos',
      () async {
    when(() => usecase.call()).thenAnswer((_) async => Right(productsMock));

    final res = await usecase.call();

    final products = res.fold((l) => null, (r) => r);

    expect(products, isNotNull);
    expect(products?.length, productsMock.length);
  });

  test(
      'Quando fazer as busca dos produtos deve retonar uma messagem de error => "Error ao buscar os produtos"',
      () async {
    when(() => usecase.call()).thenAnswer((_) async =>
        Left(GetAllProductsException(message: "Error ao buscar os produtos")));

    final res = await usecase.call();

    final error = res.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("Error ao buscar os produtos"));
  });
}
