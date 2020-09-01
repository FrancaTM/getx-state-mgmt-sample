import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mgmt_sample/screens/second.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX | State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Update name & stored count"),
              onPressed: () {},
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              child: Text('Next Screen'),
              onPressed: () {
                Get.to(Second());
              },
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
    );
  }
}