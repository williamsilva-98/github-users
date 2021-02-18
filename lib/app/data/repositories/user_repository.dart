import 'package:flutter/cupertino.dart';
import 'package:github_users/app/data/providers/user_provider.dart';

class UserRepository {
  final UserProvider userProvider;

  UserRepository({@required this.userProvider});

  Future getUsers() async {
    return await userProvider.getUsers();
  }
}
