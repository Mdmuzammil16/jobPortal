// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_details_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchJobsRequestModelImpl _$$SearchJobsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchJobsRequestModelImpl(
      jobTypeId: json['job_type_id'] as String?,
      categoryId: json['category_id'] as String?,
      countryId: json['country_id'] as String?,
      experienceLevelId: json['experience_level_id'] as String?,
      minSalary: json['min_salary'] as String?,
      maxSalary: json['max_salary'] as String?,
    );

Map<String, dynamic> _$$SearchJobsRequestModelImplToJson(
        _$SearchJobsRequestModelImpl instance) =>
    <String, dynamic>{
      'job_type_id': instance.jobTypeId,
      'category_id': instance.categoryId,
      'country_id': instance.countryId,
      'experience_level_id': instance.experienceLevelId,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
    };

_$AddToBookMarkRequestModelImpl _$$AddToBookMarkRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToBookMarkRequestModelImpl(
      jobId: json['job_id'] as String?,
    );

Map<String, dynamic> _$$AddToBookMarkRequestModelImplToJson(
        _$AddToBookMarkRequestModelImpl instance) =>
    <String, dynamic>{
      'job_id': instance.jobId,
    };
