import 'package:flutter/material.dart';
import 'package:github_users/app/helpers/devs_list.dart';
import 'package:github_users/app/helpers/generate_svg_widget.dart';
import 'package:github_users/app/helpers/icons_list.dart';
import 'package:github_users/app/helpers/labels_list.dart';
import 'package:github_users/app/pages/home/components/section_title_component.dart';

class CategoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitleComponent(title: 'Categorias'),
          Container(
            height: 150,
            margin: EdgeInsets.only(top: 8),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 8),
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (_, index) {
                return Container(
                  width: 100,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFF326C60),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(4, 4),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(.2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: GenerateSvgWidget.generate(
                          asset: iconsList[index],
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '${labelsList[index]}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '${devsList[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
