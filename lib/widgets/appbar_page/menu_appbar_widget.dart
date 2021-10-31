import 'package:flutter/material.dart';

import '../../constants.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding, left: defaultPadding),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding / 4),
            child: Container(
              height: 2,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            child: Container(
              height: 2,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
