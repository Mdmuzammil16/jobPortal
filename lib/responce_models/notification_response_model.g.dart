// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseModelImpl _$$NotificationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : NotificationDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationResponseModelImplToJson(
        _$NotificationResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$NotificationDataModelImpl _$$NotificationDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataModelImpl(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotificationDataModelImplToJson(
        _$NotificationDataModelImpl instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['company_id'] as int?,
      companyName: json['company_name'] as String?,
      companyImage: json['company_image'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'company_id': instance.id,
      'company_name': instance.companyName,
      'company_image': instance.companyImage,
    };
