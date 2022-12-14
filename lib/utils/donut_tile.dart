import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutColor,
      required this.donutPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(color: donutColor[50]),
      ),
    );
  }
}
