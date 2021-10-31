import 'package:flutter/material.dart';
import 'package:project_vesti/controller/home_controller/home_controller.dart';
import 'package:project_vesti/controller/products_controller/products_controller.dart';
import 'package:project_vesti/widgets/appbar_page/appbar_page_widget.dart';
import 'package:project_vesti/widgets/category_menu_page/category_menu.dart';
import 'package:project_vesti/widgets/products_page/products_page_widget.dart';

int? searchproductsint = 1;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = HomeController();
  ProductsController _productsController = ProductsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(productsController: _productsController),
      body: Column(
        children: [
          CategoryMenu(
            productsController: _productsController,
            controller: _controller,
          ),
          Container(
            height: 1,
            color: Colors.black26,
          ),
          ProductPage(controller: _productsController)
        ],
      ),
    );
  }
}
