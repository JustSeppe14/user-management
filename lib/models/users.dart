class User {
  int id;
  String email;
  String firstname;
  String lastname;

  User(
      {required this.id,
      required this.email,
      required this.firstname,
      required this.lastname});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      email: json["email"],
      firstname: json["first_name"],
      lastname: json["last_name"],
    );
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "first_name": firstname,
        "last_name": lastname,
      };
}
