import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

// @JsonSerializable() is an annotation that tells the code generator to generate serialization logic for this class.
@JsonSerializable()
class LoginResponse {
  String? message;
  // @JsonKey is used to specify the key name in the JSON data that maps to this field.
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  LoginResponse({this.message, this.userData, this.status, this.code});

  // fromJson is a factory constructor that creates an instance of LoginResponse from a JSON map.
  // _$LoginResponseFromJson is a generated function that handles the actual deserialization.
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  // @JsonKey is used to specify the key name in the JSON data that maps to this field 'userName'.
  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}