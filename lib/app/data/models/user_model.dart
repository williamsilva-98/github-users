class UserModel {
  int id;
  String login;
  String avatarUrl;
  String htmlUrl;

  UserModel({
    this.id,
    this.login,
    this.avatarUrl,
    this.htmlUrl,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    login = json['login'];
    avatarUrl = json['avatar_url'];
    htmlUrl = json['html_url'];
  }
}
