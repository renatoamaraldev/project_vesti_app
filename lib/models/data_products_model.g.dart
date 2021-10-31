// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataProducts _$DataProductsFromJson(Map<String, dynamic> json) => DataProducts(
      id: json['id'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      photo: json['photo'] as String?,
      pricePromo: (json['price_promo'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataProductsToJson(DataProducts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'photo': instance.photo,
      'price_promo': instance.pricePromo,
    };
