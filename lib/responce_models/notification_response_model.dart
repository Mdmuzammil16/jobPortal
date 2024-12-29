import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response_model.freezed.dart';
part 'notification_response_model.g.dart';

@Freezed()
class NotificationResponseModel with _$NotificationResponseModel{
  const factory NotificationResponseModel({
    bool? success,
    String? message,
    NotificationDataModel? data
  }) = _NotificationResponseModel;
  factory NotificationResponseModel.fromJson(Map<String,dynamic> json)=> _$NotificationResponseModelFromJson(json);
}

@freezed
class NotificationDataModel with _$NotificationDataModel{
  const factory NotificationDataModel({
    List<NotificationModel>? notifications,
  }) = _NotificationDataModel;
  factory NotificationDataModel.fromJson(Map<String,dynamic> json)=> _$NotificationDataModelFromJson(json);
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @JsonKey(name: 'company_id') int? id,
    @JsonKey(name: 'company_name')  String? companyName,
    @JsonKey(name: 'company_image')  String? companyImage,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}