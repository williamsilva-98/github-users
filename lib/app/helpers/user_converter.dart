import 'package:github_users/app/data/models/user_model.dart';

class UserConverter {
  static List<UserModel> convertUser(users) {
    List<UserModel> usersList = [];

    if (users == null) return null;

    users.map((e) => {usersList.add(UserModel.fromJson(e))}).toList();

    return usersList;
  }
}
