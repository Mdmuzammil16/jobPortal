import 'package:butter_fly/responce_models/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@Freezed()
class UserDetailsResponseModel with _$UserDetailsResponseModel{

  const factory UserDetailsResponseModel({
    bool? success,
    String? message,
    UserDataModel? data
  }) = _UserDetailsResponseModel;

  factory UserDetailsResponseModel.fromJson(Map<String,dynamic> json)=> _$UserDetailsResponseModelFromJson(json);
}


@freezed
class UserResumesResponseModel with _$UserResumesResponseModel{

  const factory UserResumesResponseModel({
    bool? success,
    String? message,
    UserResumesDataModel? data
  }) = _UserResumesResponseModel;

  factory UserResumesResponseModel.fromJson(Map<String,dynamic> json)=> _$UserResumesResponseModelFromJson(json);
}

@freezed
class UserResumesDataModel with _$UserResumesDataModel{

  const factory UserResumesDataModel({
    UserDataModel? userInfo,
    List<ResumeModel>? resumes,
  }) = _UserResumesDataModel;

  factory UserResumesDataModel.fromJson(Map<String,dynamic> json)=> _$UserResumesDataModelFromJson(json);
}

@Freezed()
class DeleteResumeResponse with _$DeleteResumeResponse{
  const factory DeleteResumeResponse.userInfo({
    bool? success,
    String? message,
    dynamic data
  }) = _DeleteResumeResponse;

  factory DeleteResumeResponse.fromJson(Map<String,dynamic> json)=> _$DeleteResumeResponseFromJson(json);
}

@freezed
class ResumeModel with _$ResumeModel{

  const factory ResumeModel({
    @JsonKey(name: 'resume_id') int? resumeId,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'download_url') String? downloadUrl
  }) = _ResumeModel;

  factory ResumeModel.fromJson(Map<String,dynamic> json)=> _$ResumeModelFromJson(json);
}