// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app/src/modules/home/domain/entity/food_entity.dart';

class FoodModel {
  final String id;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  FoodModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.imgUrl,
      required this.price});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'img_url': imgUrl,
      'price': price,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      imgUrl: map['img_url'] as String,
      price: map['price'] as double,
    );
  }

  FoodEntity toFoodEntity() {
    return FoodEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        description: description,
        price: price);
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
