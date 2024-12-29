import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_connect/http/src/multipart/multipart_file.dart';

part 'auth_request_model.freezed.dart';
part 'auth_request_model.g.dart';

@Freezed()
class GetOtpNumberRequestModel with _$GetOtpNumberRequestModel{
  const factory GetOtpNumberRequestModel({
    @JsonKey(name:"mobile_number") String? mobileNumber,
  }) = _GetOtpNumberRequestModel;
  factory GetOtpNumberRequestModel.fromJson(Map<String,dynamic> json)=> _$GetOtpNumberRequestModelFromJson(json);
}

@Freezed()
class RegisterUserRequestModel with _$RegisterUserRequestModel{
  const factory RegisterUserRequestModel({
    required String name,
    required String email,
    @JsonKey(name:"mobile_number") required String? mobileNumber,
  }) = _RegisterUserRequestModel;
  factory RegisterUserRequestModel.fromJson(Map<String,dynamic> json)=> _$RegisterUserRequestModelFromJson(json);
}

@Freezed()
class CheckOtpNumberRequestModel with _$CheckOtpNumberRequestModel{
  const factory CheckOtpNumberRequestModel({
    @JsonKey(name:"mobile_number") String? mobileNumber,
    String? otp,
  }) = _CheckOtpNumberRequestModel;
  factory CheckOtpNumberRequestModel.fromJson(Map<String,dynamic> json)=> _$CheckOtpNumberRequestModelFromJson(json);
}

@Freezed()
class UserWorkExperienceRequestModel with _$UserWorkExperienceRequestModel{
  const factory UserWorkExperienceRequestModel({
    String? userId,
    String? userExperienceId,
    String? yearsOfExperienced
  }) = _UserWorkExperienceRequestModel;
  factory UserWorkExperienceRequestModel.fromJson(Map<String,dynamic> json)=> _$UserWorkExperienceRequestModelFromJson(json);
}
