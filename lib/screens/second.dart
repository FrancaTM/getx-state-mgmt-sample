import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mgmt_sample/controllers/sumController.dart';

class Second extends StatelessWidget {
  final SumController sumController = Get.put(SumController());

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
            GetX<SumController>(
              builder: (_) {
                print("count1 rebuild");
                return Text(
                  "Counter #1: ${_.count1.value}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            GetX<SumController>(
              builder: (_) {
                print("count2 rebuild");
                return Text(
                  "Counter #2: ${_.count2.value}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            GetX<SumController>(
              builder: (_) {
                print("sum rebuild");
                return Text(
                  "Sum: ${_.sum}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            RaisedButton(
              child: Text("Increment counter #1"),
              onPressed: () {
                sumController.increment1();
              },
            ),
            RaisedButton(
              child: Text("Increment counter #2"),
              onPressed: () {
                sumController.increment2();
              },
            ),
          ],
        ),
      ),
    );
  }
}
