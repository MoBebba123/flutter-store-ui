import 'package:donut_app/pages/home_page.dart';
import 'package:donut_app/pages/product_page.dart';
import 'package:flutter/material.dart';
import 'package:donut_app/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final agrs = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/product":
        if (agrs is String) {
          return MaterialPageRoute(
            builder: (_) => ProductPage(
              data: agrs,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (builder) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.8),
          child: Text("error"),
        ),
      ),
    );
  });
}
