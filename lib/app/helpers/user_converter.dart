import 'package:github_users/app/data/models/user_model.dart';

class UserConverter {
  static List<UserModel> convertUser(List users) {
    List<UserModel> usersList = [];

    users.map((e) => {usersList.add(UserModel.fromJson(e))}).toList();

    return usersList;
  }
}
