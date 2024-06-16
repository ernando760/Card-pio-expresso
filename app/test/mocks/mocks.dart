import 'package:app/src/modules/home/domain/entity/product_entity.dart';

final productsMock = List.generate(
    10,
    (index) => ProductEntity(
        id: "$index",
        name: "name $index",
        description: "description $index",
        price: index / 100));
