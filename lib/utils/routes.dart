import 'package:flutter/material.dart';
import 'package:flutter_provider/ShoppingPage.dart';

import '../home.dart';
import 'route_names.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
      case RouteNames.shoppingPage:
        return MaterialPageRoute(
          builder: (context) => ShoppingPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
    }
  }
}
