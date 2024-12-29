import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response_model.freezed.dart';
part 'category_response_model.g.dart';

@Freezed()
class CategoryResponseModel with _$CategoryResponseModel{
  const factory CategoryResponseModel({
    bool? success,
    String? message,
    CategoryDataModel? data
  }) = _CategoryResponseModel;
  factory CategoryResponseModel.fromJson(Map<String,dynamic> json)=> _$CategoryResponseModelFromJson(json);
}

@freezed
class CategoryDataModel with _$CategoryDataModel{
  const factory CategoryDataModel({
    List<CategoryModel>? categories,
  }) = _CategoryDataModel;
  factory CategoryDataModel.fromJson(Map<String,dynamic> json)=> _$CategoryDataModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    @JsonKey(name: 'category_name')  String? categoryName,
    @JsonKey(name: 'category_image')  String? categoryImage,
    String? status,
    @JsonKey(name: 'sort_order')  String? sortOrder,
    @JsonKey(name: 'jobs_count')  String? jobsCount,
    @JsonKey(name: 'total_openings')  String? totalOpenings,
    @JsonKey(name: 'openings_text') String? openingsText,
    @JsonKey(name: 'created_at')  String? createdAt,
    @JsonKey(name: 'updated_at')  String? updatedAt
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}