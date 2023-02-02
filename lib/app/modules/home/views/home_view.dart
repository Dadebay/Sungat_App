import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/cards/books_card.dart';

import '../../../../constants/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(backArrow: false, actionIcon: false, name: 'books'),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return BookCard(index: index);
          },
          staggeredTileBuilder: (index) => StaggeredTile.count(
            1,
            index % 2 == 0 ? 1.7 : 1.7,
          ),
        ));
  }
}
