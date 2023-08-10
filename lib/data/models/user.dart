class User {
  int? id;
  String? userLogin;
  String? userPass;
  String? userNicename;
  String? userEmail;
  String? userUrl;
  DateTime? userRegistered;
  String? userActivationKey;
  int? userStatus;
  String? displayName;

  User({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['ID'],
      userLogin: json['user_login'],
      userPass: json['user_pass'],
      userNicename: json['user_nicename'],
      userEmail: json['user_email'],
      userUrl: json['user_url'],
      userRegistered: json['user_registered'],
      userActivationKey: json['user_activation_key'],
      userStatus: json['user_status'],
      displayName: json['display_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ID': id,
      'user_login': userLogin,
      'user_pass': userPass,
      'user_nicename': userNicename,
      'user_email': userEmail,
      'user_url': userUrl,
      'user_registered': userRegistered,
      'user_activation_key': userActivationKey,
      'user_status': userStatus,
      'display_name': displayName,
    };
  }
}
