import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

dynamic mainDartImports() async {
  WidgetsFlutterBinding.ensureInitialized();
  /////////////
  await GetStorage.init();
  /////////////
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  /////////////////////
  HttpOverrides.global = MyHttpOverrides();
  ///////////////
}
