import 'package:flutter/material.dart';
import 'package:github_users/app/pages/home/components/section_title_component.dart';
import 'package:github_users/app/pages/home/components/users_list_component.dart';

class TopRateSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitleComponent(title: 'Top rate'),
        UsersListComponent(),
      ],
    );
  }
}
