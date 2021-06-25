import 'package:flutter/material.dart';
import 'package:named_navigation_flutter/ScreenArguments.dart';
import 'package:named_navigation_flutter/SecondScreen.dart';
import 'package:named_navigation_flutter/ThirdScreen.dart';

void main() {
  runApp(MaterialApp(
    title: "Basic Navigation",
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      ThirdScreen.route: (context) => ThirdScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              ThirdScreen.route,
              arguments: ScreenArguments("Olá pão",
                  "O dia não passa de uma simples duvida existencial"),
            );
          },
          child: Text('Open third screen'),
        ),
      ),
    );
  }
}
