class RegisterResponseModel {
  RegisterResponseModel({
      this.message, 
      this.user, 
      this.token,});

  RegisterResponseModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? message;
  User? user;
  String? token;
RegisterResponseModel copyWith({  String? message,
  User? user,
  String? token,
}) => RegisterResponseModel(  message: message ?? this.message,
  user: user ?? this.user,
  token: token ?? this.token,
);


}

class User {
  User({
      this.name, 
      this.email, 
      this.role,});

  User.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }
  String? name;
  String? email;
  String? role;
User copyWith({  String? name,
  String? email,
  String? role,
}) => User(  name: name ?? this.name,
  email: email ?? this.email,
  role: role ?? this.role,
);


}