import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mgmt_sample/controllers/countController.dart';
import 'package:getx_state_mgmt_sample/controllers/userController.dart';
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
            GetBuilder<CountController>(
                init: CountController(),
                builder: (_) {
                  return Text("Current count value: ${_.count}");
                }),
            GetX<UserController>(
              init: UserController(),
              builder: (_) {
                return Text("Name: ${_.user.value.name}");
              },
            ),
            Obx(() {
              return Text(
                  "Stored count: ${Get.find<UserController>().user.value.count}");
            }),
            RaisedButton(
              child: Text("Update name & stored count"),
              onPressed: () {
                Get.find<UserController>()
                    .updateUser(Get.find<CountController>().count);
              },
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
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.find<CountController>().increment();
          }),
    );
  }
}
