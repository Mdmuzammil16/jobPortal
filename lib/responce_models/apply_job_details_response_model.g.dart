// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_job_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplyJobDetailsResponseModelImpl _$$ApplyJobDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplyJobDetailsResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ApplyJobDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApplyJobDetailsResponseModelImplToJson(
        _$ApplyJobDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ApplyJobDetailsModelImpl _$$ApplyJobDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplyJobDetailsModelImpl(
      jobType: (json['job-types'] as List<dynamic>?)
          ?.map((e) => JobType.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      experienceLevels: (json['experience_levels'] as List<dynamic>?)
          ?.map((e) => ExperienceLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      salaries: (json['salaries'] as List<dynamic>?)
          ?.map((e) => Salary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApplyJobDetailsModelImplToJson(
        _$ApplyJobDetailsModelImpl instance) =>
    <String, dynamic>{
      'job-types': instance.jobType,
      'categories': instance.categories,
      'countries': instance.countries,
      'experience_levels': instance.experienceLevels,
      'salaries': instance.salaries,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: json['id'] as int?,
      countryName: json['country_name'] as String?,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_name': instance.countryName,
    };

_$SalaryImpl _$$SalaryImplFromJson(Map<String, dynamic> json) => _$SalaryImpl(
      id: json['id'] as int?,
      salary: json['salary'] as String?,
      salaryMonth: json['salary_month'] as String?,
      salaryYear: json['salary_year'] as String?,
    );

Map<String, dynamic> _$$SalaryImplToJson(_$SalaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salary': instance.salary,
      'salary_month': instance.salaryMonth,
      'salary_year': instance.salaryYear,
    };
