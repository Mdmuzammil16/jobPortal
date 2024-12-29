import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_marks_response_model.freezed.dart';
part 'book_marks_response_model.g.dart';

@Freezed()
class BookMarksResponseModel with _$BookMarksResponseModel{
  const factory BookMarksResponseModel({
    bool? success,
    String? message,
    BookMarksDataModel? data
  }) = _BookMarksResponseModel;
  factory BookMarksResponseModel.fromJson(Map<String,dynamic> json)=> _$BookMarksResponseModelFromJson(json);
}

@freezed
class BookMarksDataModel with _$BookMarksDataModel{
  const factory BookMarksDataModel({
    List<BookMarksModel>? bookmarks
  }) = _BookMarksDataModel;
  factory BookMarksDataModel.fromJson(Map<String,dynamic> json)=> _$BookMarksDataModelFromJson(json);
}

@freezed
class BookMarksModel with _$BookMarksModel {
  const factory BookMarksModel({
    @JsonKey(name: 'job_id') required int jobId,
    required CompanyModel? company,
    @JsonKey(name: 'job_types') required List<JobTypeModel> jobTypes,
    required String category,
    @JsonKey(name: 'experience_level') required String experienceLevel,
    required String salary,
    @JsonKey(name: 'salary_month') required String salaryMonth,
    @JsonKey(name: 'salary_year') required String salaryYear,
    @JsonKey(name: 'post_date') required String postDate,
    String? rating,
  }) = _BookMarksModel;

  factory BookMarksModel.fromJson(Map<String, dynamic> json) => _$BookMarksModelFromJson(json);
}

@freezed
class CompanyModel with _$CompanyModel{
  const factory CompanyModel({
    @JsonKey(name: 'company_id') required int companyId,
    @JsonKey(name: 'company_name') required String companyName,
    @JsonKey(name: 'company_image') required String companyImage,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}

@freezed
class JobTypeModel with _$JobTypeModel{
  const factory JobTypeModel({
    @JsonKey(name: 'job_type_id') required int jobTypeId,
    @JsonKey(name: 'job_type') required String jobType,
  }) = _JobTypeModel;

  factory JobTypeModel.fromJson(Map<String, dynamic> json) => _$JobTypeModelFromJson(json);
}