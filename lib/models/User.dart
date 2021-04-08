class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final birthday;
  final int gender;
  final String avatar;

  User({this.id, this.name, this.email, this.phone, this.birthday, this.gender, this.avatar});

  factory  User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['id'],
        name : json['name'],
        email : json['email'],
        phone : json['phone'],
        birthday : json['birthday'],
        gender : json['gender'],
        avatar : json['avatar'],
    );
  }
}