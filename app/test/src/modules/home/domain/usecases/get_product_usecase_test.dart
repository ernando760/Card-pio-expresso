import 'package:app/src/modules/home/domain/entity/product_entity.dart';
import 'package:app/src/modules/home/domain/exceptions/products_exceptions.dart';
import 'package:app/src/modules/home/domain/usecases/get_product_usecase.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/mocks.dart';

class GetProductUsecaseMock extends Mock implements IGetProductUsecase {}

void main() {
  final IGetProductUsecase usecase = GetProductUsecaseMock();

  test("Quando fazer a busca de um produto deve retonar um produto", () async {
    when(() => usecase.call(productId: any(named: "productId")))
        .thenAnswer((_) async => Right(productsMock.first));

    final result = await usecase.call(productId: "productId");

    final product = result.fold((l) => null, (r) => r);

    expect(product, isNotNull);
    expect(product, isA<ProductEntity>());
    expect(product?.name, equals("name 0"));
  });

  test("Quando fazer a busca de um produto deve retonar um nulo", () async {
    when(() => usecase.call(productId: any(named: "productId")))
        .thenAnswer((_) async => const Right(null));

    final result = await usecase.call(productId: "productId");

    final product = result.fold((l) => null, (r) => r);

    expect(product, isNull);
    expect(product, isA<ProductEntity?>());
  });

  test(
      "Quando fazer a busca de um produto deve retonar uma messagem error => 'O id do produto está vazio'",
      () async {
    when(() => usecase.call(productId: "")).thenAnswer((_) async =>
        Left(GetProductException(message: "O id do produto está vazio")));

    final result = await usecase.call(productId: "");

    final error = result.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("O id do produto está vazio"));
    expect(error, isA<IProductsException>());
  });

  test(
      "Quando fazer a busca de um produto deve retonar uma messagem error => 'Error ao buscar o produto'",
      () async {
    when(() => usecase.call(productId: any(named: "productId"))).thenAnswer(
        (_) async => Left(
            GetAllProductsException(message: "Error ao buscar o produto")));

    final result = await usecase.call(productId: "productId");

    final error = result.fold((l) => l, (r) => null);

    expect(error, isNotNull);
    expect(error?.message, equals("Error ao buscar o produto"));
    expect(error, isA<IProductsException>());
  });
}
