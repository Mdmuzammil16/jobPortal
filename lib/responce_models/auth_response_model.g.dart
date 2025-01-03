// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOtpNumberResponseModelImpl _$$GetOtpNumberResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOtpNumberResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendOtpResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetOtpNumberResponseModelImplToJson(
        _$GetOtpNumberResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$SendOtpResponseImpl _$$SendOtpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOtpResponseImpl(
      mobileNumber: json['mobile_number'] as String?,
      otp: json['otp'] as int?,
    );

Map<String, dynamic> _$$SendOtpResponseImplToJson(
        _$SendOtpResponseImpl instance) =>
    <String, dynamic>{
      'mobile_number': instance.mobileNumber,
      'otp': instance.otp,
    };

_$CheckOtpNumberResponseModelImpl _$$CheckOtpNumberResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckOtpNumberResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyOtpResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckOtpNumberResponseModelImplToJson(
        _$CheckOtpNumberResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$RegisterUserResponseModelImpl _$$RegisterUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$RegisterUserResponseModelImplToJson(
        _$RegisterUserResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$VerifyOtpResponseImpl _$$VerifyOtpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpResponseImpl(
      token: json['token'] as String?,
      userInfo: json['userInfo'] == null
          ? null
          : UserDataModel.fromJson(json['userInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyOtpResponseImplToJson(
        _$VerifyOtpResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userInfo': instance.userInfo,
    };

_$UploadWorkExperienceResponseModelImpl
    _$$UploadWorkExperienceResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$UploadWorkExperienceResponseModelImpl(
          success: json['success'] as bool?,
          message: json['message'] as String?,
          data: json['data'],
        );

Map<String, dynamic> _$$UploadWorkExperienceResponseModelImplToJson(
        _$UploadWorkExperienceResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$UserWorkExperienceResponseModelImpl
    _$$UserWorkExperienceResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$UserWorkExperienceResponseModelImpl(
          user: json['user'] == null
              ? null
              : UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
          token: json['token'] as String?,
        );

Map<String, dynamic> _$$UserWorkExperienceResponseModelImplToJson(
        _$UserWorkExperienceResponseModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      id: json['id'] as int?,
      surName: json['sur_name'],
      name: json['name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      mobileNumber: json['mobile_number'] as String?,
      otp: json['otp'] as String?,
      userProcess: json['user_process'],
      otpGeneratedDateTime: json['otp_generated_date_time'],
      isUserType: json['is_user_type'],
      accessToken: json['access_token'],
      status: json['status'],
      sortOrder: json['sort_order'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sur_name': instance.surName,
      'name': instance.name,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'profile_pic': instance.profilePic,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'mobile_number': instance.mobileNumber,
      'otp': instance.otp,
      'user_process': instance.userProcess,
      'otp_generated_date_time': instance.otpGeneratedDateTime,
      'is_user_type': instance.isUserType,
      'access_token': instance.accessToken,
      'status': instance.status,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$GetUserExperienceResponseImpl _$$GetUserExperienceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserExperienceResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExperienceData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetUserExperienceResponseImplToJson(
        _$GetUserExperienceResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ExperienceDataImpl _$$ExperienceDataImplFromJson(Map<String, dynamic> json) =>
    _$ExperienceDataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ExperienceDataImplToJson(
        _$ExperienceDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
