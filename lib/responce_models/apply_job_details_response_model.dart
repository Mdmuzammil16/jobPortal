import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_details_response_model.dart';

part 'apply_job_details_response_model.freezed.dart';
part 'apply_job_details_response_model.g.dart';

@Freezed()
class ApplyJobDetailsResponseModel with _$ApplyJobDetailsResponseModel{
  const factory ApplyJobDetailsResponseModel({
    bool? success,
    String? message,
    ApplyJobDetailsModel? data
  }) = _ApplyJobDetailsResponseModel;
  factory ApplyJobDetailsResponseModel.fromJson(Map<String,dynamic> json)=> _$ApplyJobDetailsResponseModelFromJson(json);
}

@freezed
class ApplyJobDetailsModel with _$ApplyJobDetailsModel{
  const factory ApplyJobDetailsModel({
    @JsonKey(name: 'job-types') List<JobType>? jobType,
    List<Category>? categories,
    List<Country>? countries,
    @JsonKey(name: 'experience_levels') List<ExperienceLevel>? experienceLevels,
    List<Salary>? salaries
  }) = _ApplyJobDetailsModel;
  factory ApplyJobDetailsModel.fromJson(Map<String,dynamic> json)=> _$ApplyJobDetailsModelFromJson(json);
}

@freezed
class Country with _$Country{
  const factory Country({
    int? id,
    @JsonKey(name: 'country_name') String? countryName,
  }) = _Country;
  factory Country.fromJson(Map<String,dynamic> json)=> _$CountryFromJson(json);
}

@freezed
class Salary with _$Salary{
  const factory Salary({
    int? id,
    String? salary,
    @JsonKey(name: 'salary_month') String? salaryMonth,
    @JsonKey(name: 'salary_year') String? salaryYear,
  }) = _Salary;
  factory Salary.fromJson(Map<String,dynamic> json)=> _$SalaryFromJson(json);
}


