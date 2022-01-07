import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_login.model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(explicitToJson: true)
class UserLoginModel {
  UserLoginModel({
    required this.identifier,
    required this.password,
  });
  @HiveField(0)
  final String identifier;
  @HiveField(1)
  final String password;

  /// A necessary factory constructor for creating a new UserLoginModel instance
  /// from a map. Pass the map to the generated `_$UserLoginModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, UserLoginModel.
  factory UserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$UserLoginModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserLoginModelToJson`.
  Map<String, dynamic> toJson() => _$UserLoginModelToJson(this);
}
