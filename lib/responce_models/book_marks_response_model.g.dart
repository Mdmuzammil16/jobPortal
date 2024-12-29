// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_marks_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookMarksResponseModelImpl _$$BookMarksResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookMarksResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BookMarksDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookMarksResponseModelImplToJson(
        _$BookMarksResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$BookMarksDataModelImpl _$$BookMarksDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookMarksDataModelImpl(
      bookmarks: (json['bookmarks'] as List<dynamic>?)
          ?.map((e) => BookMarksModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookMarksDataModelImplToJson(
        _$BookMarksDataModelImpl instance) =>
    <String, dynamic>{
      'bookmarks': instance.bookmarks,
    };

_$BookMarksModelImpl _$$BookMarksModelImplFromJson(Map<String, dynamic> json) =>
    _$BookMarksModelImpl(
      jobId: json['job_id'] as int,
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      jobTypes: (json['job_types'] as List<dynamic>)
          .map((e) => JobTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String,
      experienceLevel: json['experience_level'] as String,
      salary: json['salary'] as String,
      salaryMonth: json['salary_month'] as String,
      salaryYear: json['salary_year'] as String,
      postDate: json['post_date'] as String,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$$BookMarksModelImplToJson(
        _$BookMarksModelImpl instance) =>
    <String, dynamic>{
      'job_id': instance.jobId,
      'company': instance.company,
      'job_types': instance.jobTypes,
      'category': instance.category,
      'experience_level': instance.experienceLevel,
      'salary': instance.salary,
      'salary_month': instance.salaryMonth,
      'salary_year': instance.salaryYear,
      'post_date': instance.postDate,
      'rating': instance.rating,
    };

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      companyId: json['company_id'] as int,
      companyName: json['company_name'] as String,
      companyImage: json['company_image'] as String,
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'company_id': instance.companyId,
      'company_name': instance.companyName,
      'company_image': instance.companyImage,
    };

_$JobTypeModelImpl _$$JobTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$JobTypeModelImpl(
      jobTypeId: json['job_type_id'] as int,
      jobType: json['job_type'] as String,
    );

Map<String, dynamic> _$$JobTypeModelImplToJson(_$JobTypeModelImpl instance) =>
    <String, dynamic>{
      'job_type_id': instance.jobTypeId,
      'job_type': instance.jobType,
    };
