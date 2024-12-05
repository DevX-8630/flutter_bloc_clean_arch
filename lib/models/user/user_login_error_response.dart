class UserLoginErrorResponse {
  String? error;

  UserLoginErrorResponse({
    this.error,
  });

  factory UserLoginErrorResponse.fromJson(Map<String, dynamic> json) => UserLoginErrorResponse(
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
      };
}
