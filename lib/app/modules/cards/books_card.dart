import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../home/views/book_read_page.dart';

class BookCard extends StatelessWidget {
  final int index;

  const BookCard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: borderRadius15, boxShadow: [BoxShadow(color: Colors.grey.shade200, spreadRadius: 10, blurRadius: 10)]),
          margin: EdgeInsets.only(top: 100, left: 8, right: 8, bottom: 10),
          width: Get.size.width,
          child: Column(
            children: [
              Expanded(flex: 5, child: SizedBox.shrink()),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        index == 0 ? "Türkmenistanyň şekillendiriş sungatynyň taryhy" : 'Book Name',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 16),
                      ),
                      Text(
                        index == 0 ? "Ýagşymyradow N" : 'Awtor Name',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(color: Colors.black54, fontFamily: gilroyLight, fontSize: 14),
                      ),
                      SizedBox(
                          width: Get.size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => BookReadPage());
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                backgroundColor: Theme.of(context).colorScheme.background.withOpacity(0.4),
                                shape: RoundedRectangleBorder(borderRadius: borderRadius10),
                              ),
                              child: Text('read'.tr, style: TextStyle(color: Colors.black, fontFamily: gilroyRegular))))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 190,
          width: 150,
          decoration: BoxDecoration(color: Colors.amber, boxShadow: [BoxShadow(color: Colors.grey.shade100, spreadRadius: 3, blurRadius: 3)], borderRadius: borderRadius10),
          child: ClipRRect(
            borderRadius: borderRadius10,
            child: Image.asset(
              'assets/pdf/1.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
