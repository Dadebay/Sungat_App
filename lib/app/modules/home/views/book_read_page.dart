import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class BookReadPage extends StatelessWidget {
  final bool offlineBook;
  final String bookURL;
  final String bookName;

  const BookReadPage({super.key, required this.offlineBook, required this.bookURL, required this.bookName});
  @override
  Widget build(BuildContext context) {
    print(bookURL);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: offlineBook
                ? Center(
                    child: PDF(
                      enableSwipe: true,
                      swipeHorizontal: false,
                      autoSpacing: false,
                      fitEachPage: true,
                      pageFling: true,
                      pageSnap: true,
                        
                      onError: (error) {
                        print('errrrrrrrrrrrrrorrrrrrrrrrrrrr');
                        print(error.toString());
                      },
                      onPageError: (page, error) {
                        print('errrrrrrrrrrrrrorrrrrrrrrrrrrr');

                        print('$page: ${error.toString()}');
                      },
                    ).fromAsset('assets/pdf/kitap1.pdf'),
                  )
                : Center(
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
                    ).cachedFromUrl(bookURL),
                  ),
          ),
        ],
      ),
    );
  }
}
