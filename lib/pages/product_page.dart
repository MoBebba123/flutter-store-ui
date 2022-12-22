import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String data;
  const ProductPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
            )),
      ),
      body: Text(
        data,
      ),
    );
  }
}
