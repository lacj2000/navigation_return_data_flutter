import 'package:flutter/material.dart';
import 'package:named_navigation_flutter/ScreenArguments.dart';

class ThirdScreen extends StatelessWidget {
  static const route = '/third';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
