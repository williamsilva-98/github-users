import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_users/app/pages/home/components/custom_app_bar.dart';
import 'package:github_users/app/pages/home/components/home_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body: Stack(
        children: [
          CustomAppBar(),
          HomeBody(),
        ],
      ),
    );
  }
}
