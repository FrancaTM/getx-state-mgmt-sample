import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Go to last page"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
