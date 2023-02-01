import 'package:flutter/material.dart';
import 'package:flutter_provider/utils/route_names.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/providers/counter_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'You have pushed the butten this many times: ${context
                    .watch<Counter>()
                    .count}'),
            Count(),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteNames.shoppingPage);
            }, child: Text('Click Me')),

          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: context
                .read<Counter>()
                .substraction,
            child: Icon(Icons.remove),
            tooltip: 'Decrement',
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: context
                .read<Counter>()
                .reset,
            child: Icon(Icons.exposure_zero),
            tooltip: 'Decrement',
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: context
                .read<Counter>()
                .increment,
            child: Icon(Icons.add),
            tooltip: 'Decrement',
          )
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${context
        .watch<Counter>()
        .count}', style: Theme
        .of(context)
        .textTheme
        .headline4,);
  }
}

