import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:github_users/app/data/models/user_model.dart';
import 'package:github_users/app/data/repositories/user_repository.dart';
import 'package:github_users/app/helpers/user_converter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final UserRepository userRepository;

  final _streamController = StreamController<List<UserModel>>();
  Stream<List<UserModel>> get streamController => _streamController.stream;

  static HomeController get to => Get.find<HomeController>();

  HomeController({@required this.userRepository});

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  @override
  void onClose() {
    _streamController?.close();
    super.onClose();
  }

  getUsers() async {
    var res = await userRepository.getUsers();

    var users = UserConverter.convertUser(res);

    this._streamController.sink.add(users);
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir a url: $url';
    }
  }
}
