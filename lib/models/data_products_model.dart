import 'package:json_annotation/json_annotation.dart';

part 'data_products_model.g.dart';

@JsonSerializable()
class DataProducts {
  String? id;
  String? name;
  double? price;
  String? photo;
  double? pricePromo;

  DataProducts({this.id, this.name, this.price, this.photo, this.pricePromo});

  factory DataProducts.fromJson(Map<String, dynamic> json) =>
      _$DataProductsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DataProductsToJson(this);
}
