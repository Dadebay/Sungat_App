import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final RxBool userLogin = false.obs;
  final RxInt findMainColor = 1.obs;

  final storage = GetStorage();

  saveColorInt(int a) {
    findMainColor.value = a;
    storage.write('mainColor', findMainColor.value);
  }

  returnMainColor() async {
    String a = await storage.read('mainColor').toString();
    findMainColor.value = int.parse(a);
  }

  var tm = const Locale(
    'tr',
  );
  var ru = const Locale(
    'ru',
  );
  var en = const Locale(
    'en',
  );

  dynamic switchLang(String value) {
    if (value == 'en') {
      Get.updateLocale(en);
      storage.write('langCode', 'en');
    } else if (value == 'ru') {
      Get.updateLocale(ru);
      storage.write('langCode', 'ru');
    } else {
      Get.updateLocale(tm);
      storage.write('langCode', 'tr');
    }
    update();
  }
}
