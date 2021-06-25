import 'package:flutter/material.dart';
import 'package:named_navigation_flutter/SelectionScreen.dart';

void main() {
  runApp(MaterialApp(
    title: "Basic Navigation",
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/selection': (context) => SelectionScreen(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Get Value, any value"),
      onPressed: () => {_navigateAndDisplaySelection(context)},
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/selection');
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$result"),
      ),
    );
  }
}
