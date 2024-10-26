import 'package:betterff_desktop/componets/button.componet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
            child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('$_counter', style: Theme.of(context).textTheme.headlineLarge),
            ButtonApp(
              onPressed: _incrementCounter,
              text: 'Increment',
              color: Colors.blue,
              icon: Icons.add,
              style: ButtonAppStyle.primary,
            ),
          ],
        )));
  }
}
