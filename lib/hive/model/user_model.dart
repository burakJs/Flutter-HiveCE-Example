import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_example/hive/cache_model_mixin.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel, CacheModelMixin<UserModel> {
  const UserModel._();

  const factory UserModel({
    String? name,
    String? email,
    String? password,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  UserModel get model => this;
}
