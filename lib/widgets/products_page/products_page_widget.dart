import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_vesti/controller/products_controller/products_controller.dart';
import 'package:project_vesti/models/data_products_model.dart';
import 'package:project_vesti/repository/product_repository.dart';
import 'products_error_page.dart';
import 'products_list.dart';

class ProductPage extends StatelessWidget {
  ProductsController controller;
  ProductPage({required this.controller});

  final ProductsRepository productsRepository = ProductsRepository();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      controller.txtSearch;
      return Expanded(
          child: Center(
              child: FutureBuilder(
                  future: productsRepository.fetchProducts(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<DataProducts>> snapshot) {
                    if (snapshot.hasData) {
                      controller!.updateSnapshot(snapshot);

                      if (controller.txtSearch.isEmpty) {
                        return ProductList(
                          controller: controller,
                        );
                      } else {
                        int listCount = 0;
                        var map = [];

                        for (int i = 0; i < snapshot.data!.length; i++) {
                          String key = snapshot.data![i].name.toString();

                          if (key
                              .toString()
                              .toLowerCase()
                              .contains(controller.txtSearch.toLowerCase())) {
                            listCount++;
                            map.add(snapshot.data![i]);
                          }
                        }

                        controller!.updateSnapshot(map);

                        return listCount == 0
                            ? const Center(child: ErrorProducts())
                            : ProductList(
                                controller: controller,
                              );
                      }
                    } else if (snapshot.hasError) {
                      return const Center(child: ErrorProducts());
                    }
                    return const Center(child: CircularProgressIndicator());
                  })));
    });
  }
}
