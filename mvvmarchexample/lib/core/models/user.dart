
class User  {
  bool isFirstLogin;
  String mail;
  String username;
  int wallet;
  String userID;

  User({this.isFirstLogin, this.mail, this.username, this.wallet, this.userID});

  User.fromJson(Map<String, dynamic> json) {
    isFirstLogin = json['isFirstLogin'];
    mail = json['mail'];
    username = json['username'];
    wallet = json['wallet'];
    userID = json['userID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isFirstLogin'] = this.isFirstLogin;
    data['mail'] = this.mail;
    data['username'] = this.username;
    data['wallet'] = this.wallet;
    data['userID'] = this.userID;
    return data;
  }
}