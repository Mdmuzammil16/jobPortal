// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationResponseModel _$NotificationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  NotificationDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseModelCopyWith<$Res> {
  factory $NotificationResponseModelCopyWith(NotificationResponseModel value,
          $Res Function(NotificationResponseModel) then) =
      _$NotificationResponseModelCopyWithImpl<$Res, NotificationResponseModel>;
  @useResult
  $Res call({bool? success, String? message, NotificationDataModel? data});

  $NotificationDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotificationResponseModelCopyWithImpl<$Res,
        $Val extends NotificationResponseModel>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NotificationDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationResponseModelImplCopyWith<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  factory _$$NotificationResponseModelImplCopyWith(
          _$NotificationResponseModelImpl value,
          $Res Function(_$NotificationResponseModelImpl) then) =
      __$$NotificationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, NotificationDataModel? data});

  @override
  $NotificationDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NotificationResponseModelImplCopyWithImpl<$Res>
    extends _$NotificationResponseModelCopyWithImpl<$Res,
        _$NotificationResponseModelImpl>
    implements _$$NotificationResponseModelImplCopyWith<$Res> {
  __$$NotificationResponseModelImplCopyWithImpl(
      _$NotificationResponseModelImpl _value,
      $Res Function(_$NotificationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotificationResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationResponseModelImpl implements _NotificationResponseModel {
  const _$NotificationResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$NotificationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final NotificationDataModel? data;

  @override
  String toString() {
    return 'NotificationResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationResponseModelImplCopyWith<_$NotificationResponseModelImpl>
      get copyWith => __$$NotificationResponseModelImplCopyWithImpl<
          _$NotificationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationResponseModel implements NotificationResponseModel {
  const factory _NotificationResponseModel(
      {final bool? success,
      final String? message,
      final NotificationDataModel? data}) = _$NotificationResponseModelImpl;

  factory _NotificationResponseModel.fromJson(Map<String, dynamic> json) =
      _$NotificationResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  NotificationDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$NotificationResponseModelImplCopyWith<_$NotificationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationDataModel _$NotificationDataModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationDataModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationDataModel {
  List<NotificationModel>? get notifications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataModelCopyWith<NotificationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataModelCopyWith<$Res> {
  factory $NotificationDataModelCopyWith(NotificationDataModel value,
          $Res Function(NotificationDataModel) then) =
      _$NotificationDataModelCopyWithImpl<$Res, NotificationDataModel>;
  @useResult
  $Res call({List<NotificationModel>? notifications});
}

/// @nodoc
class _$NotificationDataModelCopyWithImpl<$Res,
        $Val extends NotificationDataModel>
    implements $NotificationDataModelCopyWith<$Res> {
  _$NotificationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataModelImplCopyWith<$Res>
    implements $NotificationDataModelCopyWith<$Res> {
  factory _$$NotificationDataModelImplCopyWith(
          _$NotificationDataModelImpl value,
          $Res Function(_$NotificationDataModelImpl) then) =
      __$$NotificationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel>? notifications});
}

/// @nodoc
class __$$NotificationDataModelImplCopyWithImpl<$Res>
    extends _$NotificationDataModelCopyWithImpl<$Res,
        _$NotificationDataModelImpl>
    implements _$$NotificationDataModelImplCopyWith<$Res> {
  __$$NotificationDataModelImplCopyWithImpl(_$NotificationDataModelImpl _value,
      $Res Function(_$NotificationDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_$NotificationDataModelImpl(
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataModelImpl implements _NotificationDataModel {
  const _$NotificationDataModelImpl(
      {final List<NotificationModel>? notifications})
      : _notifications = notifications;

  factory _$NotificationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataModelImplFromJson(json);

  final List<NotificationModel>? _notifications;
  @override
  List<NotificationModel>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationDataModel(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataModelImplCopyWith<_$NotificationDataModelImpl>
      get copyWith => __$$NotificationDataModelImplCopyWithImpl<
          _$NotificationDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationDataModel implements NotificationDataModel {
  const factory _NotificationDataModel(
          {final List<NotificationModel>? notifications}) =
      _$NotificationDataModelImpl;

  factory _NotificationDataModel.fromJson(Map<String, dynamic> json) =
      _$NotificationDataModelImpl.fromJson;

  @override
  List<NotificationModel>? get notifications;
  @override
  @JsonKey(ignore: true)
  _$$NotificationDataModelImplCopyWith<_$NotificationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'company_id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_image')
  String? get companyImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_id') int? id,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'company_image') String? companyImage});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? companyImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyImage: freezed == companyImage
          ? _value.companyImage
          : companyImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_id') int? id,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'company_image') String? companyImage});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? companyImage = freezed,
  }) {
    return _then(_$NotificationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyImage: freezed == companyImage
          ? _value.companyImage
          : companyImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: 'company_id') this.id,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'company_image') this.companyImage});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'company_id')
  final int? id;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'company_image')
  final String? companyImage;

  @override
  String toString() {
    return 'NotificationModel(id: $id, companyName: $companyName, companyImage: $companyImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyImage, companyImage) ||
                other.companyImage == companyImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyName, companyImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
          {@JsonKey(name: 'company_id') final int? id,
          @JsonKey(name: 'company_name') final String? companyName,
          @JsonKey(name: 'company_image') final String? companyImage}) =
      _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'company_id')
  int? get id;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'company_image')
  String? get companyImage;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
