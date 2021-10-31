import 'package:flutter/material.dart';
import 'package:project_vesti/models/data_products_model.dart';

import '../../constants.dart';

class ItemProducts extends StatelessWidget {
  final DataProducts? product;
  final Function? press;
  const ItemProducts({Key? key, required this.product, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Column(
        children: [
          Image.network(
            product!.photo.toString(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextName(product!.name.toString().toUpperCase(), TextStyleName),
                Container(
                  height: 5,
                ),
                Row(
                  children: [
                    product!.pricePromo != null
                        ? Row(
                            children: [
                              TextPrice(product!.pricePromo, textStylePrice),
                              TextPrice(product!.price, textStyleDiscount),
                            ],
                          )
                        : TextPrice(product!.price, textStylePrice),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget TextPrice(value, stylesText) {
  return Padding(
    padding: const EdgeInsets.only(right: defaultPadding / 5),
    child: Text('€' + value.toString(), style: stylesText),
  );
}

Widget TextName(value, stylesText) {
  return Text(value.toString(), style: stylesText);
}
