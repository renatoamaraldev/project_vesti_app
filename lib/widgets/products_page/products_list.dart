import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vesti/controller/products_controller/products_controller.dart';
import 'package:project_vesti/package/flutter_staggered_grid_view.dart';
import '../../constants.dart';
import 'products_items.dart';

class ProductList extends StatelessWidget {
  ProductsController? controller;
  ProductList({Key? key, required this.controller});
  @override
  Widget build(BuildContext context) {
    var snapshot = controller!.snapshot;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(defaultPadding + 5, defaultPadding,
              defaultPadding + 5, defaultPadding / 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                snapshot is List ? '"${controller!.txtSearch}"' : 'Todos',
                style: GoogleFonts.lato(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Text(
                  snapshot is List
                      ? snapshot.length.toString() + ' itens encontrados'
                      : snapshot.data!.length.toString() + ' itens encontrados',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, color: Colors.black38))
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              itemCount:
                  snapshot is List ? snapshot.length : snapshot.data!.length,
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              itemBuilder: (context, index) => ItemProducts(
                product:
                    snapshot is List ? snapshot[index] : snapshot.data![index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
