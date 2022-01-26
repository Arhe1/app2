import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Демо АппБАр'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: Icon(Icons.bed)),
            TextButton(
              onPressed: () {},
              child: Text('Test'),
              style: buttonStyle,
            ),
          ],
        ),
        body: Center(child: Text('Контент')),
      )
    );
  }
}
