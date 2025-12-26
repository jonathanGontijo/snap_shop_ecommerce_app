class UserModel {
  String name;
  String email;
  String address;
  String phone;

  UserModel({
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
    );
  }
}
