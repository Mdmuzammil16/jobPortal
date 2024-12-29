// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsResponseModelImpl _$$UserDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailsResponseModelImplToJson(
        _$UserDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$UserResumesResponseModelImpl _$$UserResumesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResumesResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserResumesDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResumesResponseModelImplToJson(
        _$UserResumesResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$UserResumesDataModelImpl _$$UserResumesDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResumesDataModelImpl(
      userInfo: json['userInfo'] == null
          ? null
          : UserDataModel.fromJson(json['userInfo'] as Map<String, dynamic>),
      resumes: (json['resumes'] as List<dynamic>?)
          ?.map((e) => ResumeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserResumesDataModelImplToJson(
        _$UserResumesDataModelImpl instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'resumes': instance.resumes,
    };

_$DeleteResumeResponseImpl _$$DeleteResumeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteResumeResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$DeleteResumeResponseImplToJson(
        _$DeleteResumeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ResumeModelImpl _$$ResumeModelImplFromJson(Map<String, dynamic> json) =>
    _$ResumeModelImpl(
      resumeId: json['resume_id'] as int?,
      fileName: json['file_name'] as String?,
      downloadUrl: json['download_url'] as String?,
    );

Map<String, dynamic> _$$ResumeModelImplToJson(_$ResumeModelImpl instance) =>
    <String, dynamic>{
      'resume_id': instance.resumeId,
      'file_name': instance.fileName,
      'download_url': instance.downloadUrl,
    };
