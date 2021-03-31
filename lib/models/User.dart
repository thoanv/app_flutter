class User {
  final String name;
  final String email;
  final String phone;
  final String birthday;
  final String gender;
  final String avatar;

  User({this.name, this.email, this.phone, this.birthday, this.gender, this.avatar});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
        name : json['name'],
        email : json['email'],
        phone : json['phone'],
        birthday : json['birthday'],
        gender : json['gender'],
        avatar : json['avatar'],
    );
  }
}