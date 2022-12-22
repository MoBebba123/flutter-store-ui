import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  List donutsOnSale = [
    ["ice Cream", "36", Colors.blue, "lib/images/donut.png"],
    ["choclate", "20", Colors.red, "lib/images/donut(1).png"],
    ["cockies", "25", Colors.purple, "lib/images/donut(2).png"],
    ["vanilla", "30", Colors.brown, "lib/images/doughnut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
