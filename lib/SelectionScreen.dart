import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ElevatedButton(
                child: Text('yep!'),
                onPressed: () {
                  Navigator.pop(context, 'yep!');
                }),
            ElevatedButton(
                child: Text('nop!'),
                onPressed: () {
                  Navigator.pop(context, 'nop');
                }),
          ],
        ),
      ),
    );
  }
}
