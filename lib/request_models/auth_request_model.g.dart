// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOtpNumberRequestModelImpl _$$GetOtpNumberRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOtpNumberRequestModelImpl(
      mobileNumber: json['mobile_number'] as String?,
    );

Map<String, dynamic> _$$GetOtpNumberRequestModelImplToJson(
        _$GetOtpNumberRequestModelImpl instance) =>
    <String, dynamic>{
      'mobile_number': instance.mobileNumber,
    };

_$CheckOtpNumberRequestModelImpl _$$CheckOtpNumberRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckOtpNumberRequestModelImpl(
      mobileNumber: json['mobile_number'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$CheckOtpNumberRequestModelImplToJson(
        _$CheckOtpNumberRequestModelImpl instance) =>
    <String, dynamic>{
      'mobile_number': instance.mobileNumber,
      'otp': instance.otp,
    };

_$UserWorkExperienceRequestModelImpl
    _$$UserWorkExperienceRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$UserWorkExperienceRequestModelImpl(
          userId: json['userId'] as String?,
          userExperienceId: json['userExperienceId'] as String?,
          yearsOfExperienced: json['yearsOfExperienced'] as String?,
        );

Map<String, dynamic> _$$UserWorkExperienceRequestModelImplToJson(
        _$UserWorkExperienceRequestModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userExperienceId': instance.userExperienceId,
      'yearsOfExperienced': instance.yearsOfExperienced,
    };
