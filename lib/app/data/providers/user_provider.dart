import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class UserProvider {
  final Dio dio;

  UserProvider({@required this.dio});

  Future getUsers() async {
    try {
      Response res = await dio.get('https://api.github.com/users');

      if (res.statusCode == 200) return res.data;

      return null;
    } catch (e) {
      return null;
    }
  }
}
