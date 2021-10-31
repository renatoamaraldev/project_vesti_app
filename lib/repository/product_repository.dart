import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:project_vesti/models/data_products_model.dart';

const String url = "https://testvesti.herokuapp.com/catalog";

class ProductsRepository {
  var dio = Dio();

  Future<List<DataProducts>> fetchProducts() async {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      Map productsData = jsonDecode(response.data.toString());
      List<dynamic> products = productsData["data"];
      return products.map((json) => DataProducts.fromJson(json)).toList();
    } else {
      throw Exception("Algo deu errado, ${response.statusCode}");
    }
  }
}
