// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseModelImpl _$$CategoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CategoryDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryResponseModelImplToJson(
        _$CategoryResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$CategoryDataModelImpl _$$CategoryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDataModelImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryDataModelImplToJson(
        _$CategoryDataModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as int,
      categoryName: json['category_name'] as String?,
      categoryImage: json['category_image'] as String?,
      status: json['status'] as String?,
      sortOrder: json['sort_order'] as String?,
      jobsCount: json['jobs_count'] as String?,
      totalOpenings: json['total_openings'] as String?,
      openingsText: json['openings_text'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.categoryName,
      'category_image': instance.categoryImage,
      'status': instance.status,
      'sort_order': instance.sortOrder,
      'jobs_count': instance.jobsCount,
      'total_openings': instance.totalOpenings,
      'openings_text': instance.openingsText,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
