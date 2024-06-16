import 'package:app/src/modules/home/domain/entity/food_entity.dart';

final foodsMock = List.generate(
    10,
    (index) => FoodEntity(
        id: "$index",
        name: "name $index",
        description: "description $index",
        price: index / 100));
