class UserLoginResponse {
  String? token;

  UserLoginResponse({
    this.token,
  });

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) => UserLoginResponse(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
