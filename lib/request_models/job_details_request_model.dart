
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_details_request_model.freezed.dart';
part 'job_details_request_model.g.dart';

@Freezed()
class SearchJobsRequestModel with _$SearchJobsRequestModel{
  const factory SearchJobsRequestModel({
    @JsonKey(name:"job_type_id") required String? jobTypeId,
    @JsonKey(name:"category_id") required String? categoryId,
    @JsonKey(name:"country_id") required String? countryId,
    @JsonKey(name:"experience_level_id") required String? experienceLevelId,
    @JsonKey(name:"min_salary") required String? minSalary,
    @JsonKey(name:"max_salary") required String? maxSalary
    }) = _SearchJobsRequestModel;
  factory SearchJobsRequestModel.fromJson(Map<String,dynamic> json)=> _$SearchJobsRequestModelFromJson(json);
}

@freezed
class AddToBookMarkRequestModel with _$AddToBookMarkRequestModel{
  const factory AddToBookMarkRequestModel({
    @JsonKey(name:"job_id") required String? jobId,
  }) = _AddToBookMarkRequestModel;
  factory AddToBookMarkRequestModel.fromJson(Map<String,dynamic> json)=> _$AddToBookMarkRequestModelFromJson(json);
}
