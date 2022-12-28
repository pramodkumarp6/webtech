class LoginResponse {
  String? error;
  String? message;
  Users? users;

  LoginResponse({this.error, this.message, this.users});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['error'] = error;
    data['message'] = message;
    if (users != null) {
      data['users'] = users!.toJson();
    }
    return data;
  }
}

class Users {
  String? address;
  String? city;
  String? country;
  String? email;
  String? gender;
  String? mobile;
  String? name;
  String? state;
  int? userId;
  int? usertype;

  Users(
      {this.address,
      this.city,
      this.country,
      this.email,
      this.gender,
      this.mobile,
      this.name,
      this.state,
      this.userId,
      this.usertype});

  Users.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    country = json['country'];
    email = json['email'];
    gender = json['gender'];
    mobile = json['mobile'];
    name = json['name'];
    state = json['state'];
    userId = json['user_id'];
    usertype = json['usertype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = address;
    data['city'] = city;
    data['country'] = country;
    data['email'] = email;
    data['gender'] = gender;
    data['mobile'] = mobile;
    data['name'] = name;
    data['state'] = state;
    data['user_id'] = userId;
    data['usertype'] = usertype;
    return data;
  }
}
