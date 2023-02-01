import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/counter_provider.dart';
import 'package:flutter_provider/providers/shopping_cart_provider.dart';
import 'package:flutter_provider/utils/routes.dart';
import 'package:provider/provider.dart';
import 'utils/route_names.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter()),
        ChangeNotifierProvider(create: (context) => ShoppingCartProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        initialRoute: RouteNames.home,
        onGenerateRoute: Routes.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
