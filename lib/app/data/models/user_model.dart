class UserModel {
  int id;
  String avatarUrl;
  String url;
  String followersUrl;
  String reposUrl;

  UserModel({
    this.id,
    this.avatarUrl,
    this.url,
    this.followersUrl,
    this.reposUrl,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatarUrl = json['avatar_url'];
    url = json['url'];
    followersUrl = json['followers_url'];
    reposUrl = json['repos_url'];
  }
}
