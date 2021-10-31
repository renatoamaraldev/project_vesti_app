import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vesti/controller/home_controller/home_controller.dart';
import 'package:project_vesti/controller/products_controller/products_controller.dart';

import '../../constants.dart';

class CategoryMenu extends StatelessWidget {
  ProductsController productsController;
  HomeController controller;
  CategoryMenu({required this.productsController, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (context) => SizedBox(
              height: 65,
              width: double.infinity,
              child: controller.searchproductsint == 1
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.only(left: defaultPadding),
                            icon: Icon(Icons.search),
                            iconSize: 20.0,
                            onPressed: () {
                              controller.searchproductsint = 0;
                              controller.updateIntSearchBottom(0);
                            },
                          ),
                          Row(
                            children: List.generate(
                              listMenu.length,
                              (index) {
                                return Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: GestureDetector(
                                      onTap: () {
                                        productsController.updateTxtSearch(
                                            listMenu[index].toString());
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                            defaultPadding),
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                            listMenu[index].toString(),
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w500),
                                          )),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
                        ],
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: ListTile(
                          title: TextField(
                            onChanged: (value) {
                              productsController.updateTxtSearch(value);
                            },
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Digite o nome do produto'),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.searchproductsint = 1;
                              controller.updateIntSearchBottom(1);
                              if (productsController.txtSearch.isNotEmpty) {
                                productsController.updateTxtSearch('');
                              }
                            },
                            icon: Icon(
                              Icons.close,
                            ),
                            iconSize: 20.0,
                          )),
                    ),
            ));
  }
}
