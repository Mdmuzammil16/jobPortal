import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@Freezed()
class SearchModel with _$SearchModel{

  const factory SearchModel({
    String? image,
    String? message,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String,dynamic> json)=> _$SearchModelFromJson(json);
}