import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/counter_provider.dart';
import 'package:provider/provider.dart';
import 'providers/shopping_cart_provider.dart';

class ShoppingPage extends StatelessWidget {
   ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example ${context.watch<Counter>().count}'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCartProvider>().cart.length}'),
            Text('${context.watch<ShoppingCartProvider>().cart}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            context.read<ShoppingCartProvider>().addItem('beero');
          },
      child: Icon(Icons.add)),
    );
  }
}
