import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  increment1() => count1.value++;

  increment2() => count2.value++;

  int get sum => count1.value + count2.value;

  @override
  void onInit() {
    super.onInit();

    ever(count1, (_) => print("count1 has been changed"));
    once(count1, (_) => print("first time count1 is changed"));
    debounce(count1, (_) => print("count1 hasn't changed for 1s"),
        time: Duration(seconds: 1));
    interval(count1, (_) => print("every 1s count1 is changed"),
        time: Duration(seconds: 1));
  }
}
