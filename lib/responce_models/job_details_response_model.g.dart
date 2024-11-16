// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobDetailsResponseModelImpl _$$JobDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JobDetailsResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$JobDetailsResponseModelImplToJson(
        _$JobDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$JobDetailsModelImpl _$$JobDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JobDetailsModelImpl(
      id: json['id'] as int,
      companyId: json['company_id'] as String?,
      categoryId: json['category_id'] as String?,
      jobTypeId: json['job_type_id'] as String?,
      countryId: json['country_id'] as String?,
      stateId: json['state_id'] as String?,
      districtId: json['district_id'] as String?,
      areaId: json['area_id'] as String?,
      experienceLevelId: json['experience_level_id'] as String?,
      salaryId: json['salary_id'] as String?,
      description: json['description'] as String?,
      isTypeJob: json['is_type_job'] as String?,
      status: json['status'] as String?,
      sortOrder: json['sort_order'] as String?,
      postDate: json['post_date'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      getCompanies: json['get_companies'] == null
          ? null
          : Company.fromJson(json['get_companies'] as Map<String, dynamic>),
      getCategories: json['get_categories'] == null
          ? null
          : Category.fromJson(json['get_categories'] as Map<String, dynamic>),
      getJobTypes: json['get_job_types'] == null
          ? null
          : JobType.fromJson(json['get_job_types'] as Map<String, dynamic>),
      getExperienceLevels: json['get_experience_levels'] == null
          ? null
          : ExperienceLevel.fromJson(
              json['get_experience_levels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JobDetailsModelImplToJson(
        _$JobDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'category_id': instance.categoryId,
      'job_type_id': instance.jobTypeId,
      'country_id': instance.countryId,
      'state_id': instance.stateId,
      'district_id': instance.districtId,
      'area_id': instance.areaId,
      'experience_level_id': instance.experienceLevelId,
      'salary_id': instance.salaryId,
      'description': instance.description,
      'is_type_job': instance.isTypeJob,
      'status': instance.status,
      'sort_order': instance.sortOrder,
      'post_date': instance.postDate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'get_companies': instance.getCompanies,
      'get_categories': instance.getCategories,
      'get_job_types': instance.getJobTypes,
      'get_experience_levels': instance.getExperienceLevels,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      companyName: json['company_name'] as String?,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as int?,
      categoryName: json['category_name'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.categoryName,
    };

_$JobTypeImpl _$$JobTypeImplFromJson(Map<String, dynamic> json) =>
    _$JobTypeImpl(
      id: json['id'] as int?,
      typeName: json['type_name'] as String?,
    );

Map<String, dynamic> _$$JobTypeImplToJson(_$JobTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_name': instance.typeName,
    };

_$ExperienceLevelImpl _$$ExperienceLevelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceLevelImpl(
      id: json['id'] as int?,
      experienceLevelName: json['experience_level_name'] as String?,
    );

Map<String, dynamic> _$$ExperienceLevelImplToJson(
        _$ExperienceLevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'experience_level_name': instance.experienceLevelName,
    };
