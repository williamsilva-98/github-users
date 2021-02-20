import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Olá, William',
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Bem-vindo de Volta',
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
