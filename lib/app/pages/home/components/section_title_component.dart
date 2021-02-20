import 'package:flutter/material.dart';

class SectionTitleComponent extends StatelessWidget {
  final String title;

  const SectionTitleComponent({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title',
          style: TextStyle(
            color: Colors.black.withOpacity(.8),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Ver tudo',
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
