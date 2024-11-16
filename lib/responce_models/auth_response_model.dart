import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@Freezed()
class GetOtpNumberResponseModel with _$GetOtpNumberResponseModel{
  const factory GetOtpNumberResponseModel({
    bool? success,
    String? message,
    SendOtpResponse? data
  }) = _GetOtpNumberResponseModel;
  factory GetOtpNumberResponseModel.fromJson(Map<String,dynamic> json)=> _$GetOtpNumberResponseModelFromJson(json);
}

@Freezed()
class SendOtpResponse with _$SendOtpResponse{
  const factory SendOtpResponse({
    @JsonKey(name:"mobile_number") String? mobileNumber,
    int? otp,
  }) = _SendOtpResponse;
  factory SendOtpResponse.fromJson(Map<String,dynamic> json)=> _$SendOtpResponseFromJson(json);
}



@Freezed()
class CheckOtpNumberResponseModel with _$CheckOtpNumberResponseModel{
  const factory CheckOtpNumberResponseModel.userInfo({
    bool? success,
    String? message,
    dynamic data
  }) = _CheckOtpNumberResponseModel;

  factory CheckOtpNumberResponseModel.fromJson(Map<String,dynamic> json)=> _$CheckOtpNumberResponseModelFromJson(json);
}

@Freezed()
class VerifyOtpResponse with _$VerifyOtpResponse{
  const factory VerifyOtpResponse({
    UserDataModel? userInfo,
    String? token,
  }) = _VerifyOtpResponse;
  factory VerifyOtpResponse.fromJson(Map<String,dynamic> json)=> _$VerifyOtpResponseFromJson(json);
}


@Freezed()
class UploadWorkExperienceResponseModel with _$UploadWorkExperienceResponseModel{
  const factory UploadWorkExperienceResponseModel.userInfo({
    bool? success,
    String? message,
    dynamic data
  }) = _UploadWorkExperienceResponseModel;

  factory UploadWorkExperienceResponseModel.fromJson(Map<String,dynamic> json)=> _$UploadWorkExperienceResponseModelFromJson(json);
}

@Freezed()
class UserWorkExperienceResponseModel with _$UserWorkExperienceResponseModel{
  const factory UserWorkExperienceResponseModel({
    UserDataModel? user,
    String? token,
  }) = _UserWorkExperienceResponseModel;
  factory UserWorkExperienceResponseModel.fromJson(Map<String,dynamic> json)=> _$UserWorkExperienceResponseModelFromJson(json);
}



@Freezed()
class UserDataModel with _$UserDataModel{
  const factory UserDataModel({
    int? id,
    @JsonKey(name:"sur_name") String? surName,
    String? name,
    @JsonKey(name:"middle_name") String? middleName,
    @JsonKey(name:"last_name") String? lastName,
    @JsonKey(name:"profile_pic") String? profilePic,
    String? email,
    @JsonKey(name:"email_verified_at") DateTime? emailVerifiedAt,
    @JsonKey(name:"mobile_number") String? mobileNumber,
    String? otp,
    @JsonKey(name:"user_process") String? userProcess,
    @JsonKey(name:"otp_generated_date_time") DateTime? otpGeneratedDateTime,
    @JsonKey(name:"is_user_type") String? isUserType,
    @JsonKey(name:"access_token") String? accessToken,
    String? status,
    @JsonKey(name:"sort_order") String? sortOrder,
    @JsonKey(name:"created_at") DateTime? createdAt,
    @JsonKey(name:"updated_at") DateTime? updatedAt,
  }) = _UserDataModel;
  factory UserDataModel.fromJson(Map<String,dynamic> json)=> _$UserDataModelFromJson(json);
}


@Freezed()
class GetUserExperienceResponse with _$GetUserExperienceResponse{
  const factory GetUserExperienceResponse({
    bool? success,
    String? message,
    List<ExperienceData>? data,
  }) = _GetUserExperienceResponse;
  factory GetUserExperienceResponse.fromJson(Map<String,dynamic> json)=> _$GetUserExperienceResponseFromJson(json);
}

@Freezed()
class ExperienceData with _$ExperienceData{
  const factory ExperienceData({
    int? id,
    String? name
  }) = _ExperienceData;
  factory ExperienceData.fromJson(Map<String,dynamic> json)=> _$ExperienceDataFromJson(json);
}
