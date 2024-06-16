import 'package:core_module/core_module.dart';

class FoodEntity extends Entity<String?> {
  final String name;
  final String description;
  final double price;
  const FoodEntity({
    super.id,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  String toString() =>
      "$runtimeType(id: $id ,name: $name, description: $description, price: $price)";

  @override
  List<Object?> get props => [id, name, description, price];
}
