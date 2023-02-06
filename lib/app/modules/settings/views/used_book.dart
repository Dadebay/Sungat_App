import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/constants/constants.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';

class UsedBooks extends StatelessWidget {
  const UsedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: 'usedBook'.tr),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'usedBook1'.tr,
              style: TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                ' - N.Ýagşymyradowyň - "Türkmenistanyň şekillendiriş sungatynyň taryhy"',
                style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 18),
              ),
            ),
            Text(
              ' - O.Muhatowanyň - "Türkmenistanyň suratkeşler birleşigi 70 ýyl Albom 2011"',
              style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
