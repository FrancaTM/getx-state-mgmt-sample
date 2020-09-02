import 'package:get/get.dart';
import 'package:getx_state_mgmt_sample/models/user.dart';

class UserController extends GetxController {
  final user = User().obs;

  updateUser(int count) {
    user.update((value) {
      value.name = "Túlio";
      value.count = count;
    });
  }
}
