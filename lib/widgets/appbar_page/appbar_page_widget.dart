import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vesti/constants.dart';
import 'package:project_vesti/controller/products_controller/products_controller.dart';
import 'package:project_vesti/widgets/appbar_page/cart_appabr_widget.dart';
import 'package:project_vesti/widgets/appbar_page/menu_appbar_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  ProductsController productsController;
  AppBarWidget({required this.productsController});
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: GestureDetector(
          onTap: () {
            if (productsController.txtSearch.isNotEmpty) {
              productsController.updateTxtSearch('');
            }
          },
          child: Text(
            nameApp,
            style: GoogleFonts.cormorantGaramond(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        elevation: 1,
        actions: const [CartWidget()],
        leading: const MenuWidget());
  }
}
