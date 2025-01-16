class UserModel {
  String? accessToken;
  String? refreshToken;
  String? message;

  UserModel({this.accessToken, this.refreshToken, this.message});

  UserModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['refresh_token'] = this.refreshToken;
    data['message'] = this.message;
    return data;
  }
}
