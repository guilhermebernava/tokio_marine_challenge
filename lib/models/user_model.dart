class UserModel {
  String name;
  String email;
  String imageUrl;
  String token;

  UserModel({
    required this.email,
    required this.imageUrl,
    required this.name,
    this.token = '',
  });
}
