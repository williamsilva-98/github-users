import 'package:flutter/material.dart';
import 'package:github_users/app/helpers/generate_svg_widget.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 4),
            blurRadius: 10,
            color: Colors.black.withOpacity(.1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 3),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(.8),
                ),
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(.4),
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF326C60),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: GenerateSvgWidget.generate(
                asset: 'assets/icons/search_icon.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
