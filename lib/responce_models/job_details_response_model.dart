
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_details_response_model.freezed.dart';
part 'job_details_response_model.g.dart';

@Freezed()
class JobDetailsResponseModel with _$JobDetailsResponseModel{
  const factory JobDetailsResponseModel({
    bool? success,
    String? message,
    dynamic data
  }) = _JobDetailsResponseModel;
  factory JobDetailsResponseModel.fromJson(Map<String,dynamic> json)=> _$JobDetailsResponseModelFromJson(json);
}

@freezed
class JobDetailsModel with _$JobDetailsModel {
  const factory JobDetailsModel({
    required int id,
    @JsonKey(name: 'company_id')  String? companyId,
    @JsonKey(name: 'category_id')  String? categoryId,
    @JsonKey(name: 'job_type_id')  String? jobTypeId,
    @JsonKey(name: 'country_id')  String? countryId,
    @JsonKey(name: 'state_id')  String? stateId,
    @JsonKey(name: 'district_id')  String? districtId,
    @JsonKey(name: 'area_id')  String? areaId,
    @JsonKey(name: 'experience_level_id')  String? experienceLevelId,
    @JsonKey(name: 'salary_id') String? salaryId,
    String? description,
    @JsonKey(name: 'is_type_job')  String? isTypeJob,
    String? status,
    @JsonKey(name: 'sort_order') String? sortOrder,
    @JsonKey(name: 'post_date') String? postDate,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'get_companies') Company? getCompanies,
    @JsonKey(name: 'get_categories') Category? getCategories,
    @JsonKey(name: 'get_job_types') JobType? getJobTypes,
    @JsonKey(name: 'get_experience_levels') ExperienceLevel? getExperienceLevels,
  }) = _JobDetailsModel;

  factory JobDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$JobDetailsModelFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    int? id,
    @JsonKey(name: 'company_name') String? companyName,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class JobType with _$JobType {
  const factory JobType({
    int? id,
    @JsonKey(name: 'type_name') String? typeName,
  }) = _JobType;

  factory JobType.fromJson(Map<String, dynamic> json) => _$JobTypeFromJson(json);
}

@freezed
class ExperienceLevel with _$ExperienceLevel {
  const factory ExperienceLevel({
    int? id,
    @JsonKey(name: 'experience_level_name') String? experienceLevelName,
  }) = _ExperienceLevel;

  factory ExperienceLevel.fromJson(Map<String, dynamic> json) =>
      _$ExperienceLevelFromJson(json);
}