import 'package:json_annotation/json_annotation.dart';

part 'login_respone.model.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponseModel {
  LoginResponseModel({
    required this.jwt,
  });

  final String jwt;

  /// A necessary factory constructor for creating a new LoginResponseModel instance
  /// from a map. Pass the map to the generated `_$LoginResponseModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, LoginResponseModel.
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$LoginResponseModelToJson`.
  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
