import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get/get.dart';

import '../../../../constants/constants.dart';

class BookReadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: PDF(
                enableSwipe: true,
                swipeHorizontal: false,
                autoSpacing: false,
                fitEachPage: true,
                pageFling: true,
                pageSnap: true,
                onError: (error) {
                  print(error.toString());
                },
                onPageError: (page, error) {
                  print('$page: ${error.toString()}');
                },
              ).fromAsset('assets/pdf/kitap1.pdf'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                padding: EdgeInsets.all(8),
                width: Get.size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      backgroundColor: Theme.of(context).colorScheme.background,
                      shape: RoundedRectangleBorder(borderRadius: borderRadius15),
                    ),
                    child: Text('downloadFiles'.tr, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: gilroyBold)))),
          ),
        ],
      ),
    );
  }
}
