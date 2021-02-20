import 'package:flutter/material.dart';
import 'package:github_users/app/helpers/generate_svg_widget.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFF083854),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              child: IconButton(
                icon: GenerateSvgWidget.generate(
                  asset: 'assets/icons/menu_icon.svg',
                ),
                onPressed: () {},
              ),
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: IconButton(
                    icon: GenerateSvgWidget.generate(
                      asset: 'assets/icons/bell_icon.svg',
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/avatar.jpg',
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
