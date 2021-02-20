import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/app/pages/home/components/custom_header.dart';
import 'package:github_users/app/pages/home/components/top_rate_section.dart';

import 'cartegories_section.dart';
import 'custom_search_bar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * .1),
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        physics: BouncingScrollPhysics(),
        shrinkWrap: false,
        children: [
          CustomHeader(),
          CustomSearchBar(),
          CategoriesSection(),
          TopRateSection(),
        ],
      ),
    );
  }
}
