import 'package:flutter/material.dart';

class ErrorProducts extends StatelessWidget {
  const ErrorProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.search_off_sharp,
          color: Colors.black,
          size: 82.0,
        ),
        Text('Nenhum produto encontrado!')
      ],
    );
  }
}
