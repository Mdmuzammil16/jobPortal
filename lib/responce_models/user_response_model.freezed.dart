// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailsResponseModel _$UserDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailsResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsResponseModelCopyWith<UserDetailsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsResponseModelCopyWith<$Res> {
  factory $UserDetailsResponseModelCopyWith(UserDetailsResponseModel value,
          $Res Function(UserDetailsResponseModel) then) =
      _$UserDetailsResponseModelCopyWithImpl<$Res, UserDetailsResponseModel>;
  @useResult
  $Res call({bool? success, String? message, UserDataModel? data});

  $UserDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserDetailsResponseModelCopyWithImpl<$Res,
        $Val extends UserDetailsResponseModel>
    implements $UserDetailsResponseModelCopyWith<$Res> {
  _$UserDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as UserDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDetailsResponseModelImplCopyWith<$Res>
    implements $UserDetailsResponseModelCopyWith<$Res> {
  factory _$$UserDetailsResponseModelImplCopyWith(
          _$UserDetailsResponseModelImpl value,
          $Res Function(_$UserDetailsResponseModelImpl) then) =
      __$$UserDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, UserDataModel? data});

  @override
  $UserDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$UserDetailsResponseModelCopyWithImpl<$Res,
        _$UserDetailsResponseModelImpl>
    implements _$$UserDetailsResponseModelImplCopyWith<$Res> {
  __$$UserDetailsResponseModelImplCopyWithImpl(
      _$UserDetailsResponseModelImpl _value,
      $Res Function(_$UserDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserDetailsResponseModelImpl(
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
              as UserDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsResponseModelImpl implements _UserDetailsResponseModel {
  const _$UserDetailsResponseModelImpl({this.success, this.message, this.data});

  factory _$UserDetailsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final UserDataModel? data;

  @override
  String toString() {
    return 'UserDetailsResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsResponseModelImpl &&
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
  _$$UserDetailsResponseModelImplCopyWith<_$UserDetailsResponseModelImpl>
      get copyWith => __$$UserDetailsResponseModelImplCopyWithImpl<
          _$UserDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserDetailsResponseModel implements UserDetailsResponseModel {
  const factory _UserDetailsResponseModel(
      {final bool? success,
      final String? message,
      final UserDataModel? data}) = _$UserDetailsResponseModelImpl;

  factory _UserDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserDetailsResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  UserDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsResponseModelImplCopyWith<_$UserDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserResumesResponseModel _$UserResumesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserResumesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserResumesResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserResumesDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResumesResponseModelCopyWith<UserResumesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResumesResponseModelCopyWith<$Res> {
  factory $UserResumesResponseModelCopyWith(UserResumesResponseModel value,
          $Res Function(UserResumesResponseModel) then) =
      _$UserResumesResponseModelCopyWithImpl<$Res, UserResumesResponseModel>;
  @useResult
  $Res call({bool? success, String? message, UserResumesDataModel? data});

  $UserResumesDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserResumesResponseModelCopyWithImpl<$Res,
        $Val extends UserResumesResponseModel>
    implements $UserResumesResponseModelCopyWith<$Res> {
  _$UserResumesResponseModelCopyWithImpl(this._value, this._then);

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
              as UserResumesDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResumesDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserResumesDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResumesResponseModelImplCopyWith<$Res>
    implements $UserResumesResponseModelCopyWith<$Res> {
  factory _$$UserResumesResponseModelImplCopyWith(
          _$UserResumesResponseModelImpl value,
          $Res Function(_$UserResumesResponseModelImpl) then) =
      __$$UserResumesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, UserResumesDataModel? data});

  @override
  $UserResumesDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserResumesResponseModelImplCopyWithImpl<$Res>
    extends _$UserResumesResponseModelCopyWithImpl<$Res,
        _$UserResumesResponseModelImpl>
    implements _$$UserResumesResponseModelImplCopyWith<$Res> {
  __$$UserResumesResponseModelImplCopyWithImpl(
      _$UserResumesResponseModelImpl _value,
      $Res Function(_$UserResumesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserResumesResponseModelImpl(
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
              as UserResumesDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResumesResponseModelImpl implements _UserResumesResponseModel {
  const _$UserResumesResponseModelImpl({this.success, this.message, this.data});

  factory _$UserResumesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResumesResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final UserResumesDataModel? data;

  @override
  String toString() {
    return 'UserResumesResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResumesResponseModelImpl &&
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
  _$$UserResumesResponseModelImplCopyWith<_$UserResumesResponseModelImpl>
      get copyWith => __$$UserResumesResponseModelImplCopyWithImpl<
          _$UserResumesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResumesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserResumesResponseModel implements UserResumesResponseModel {
  const factory _UserResumesResponseModel(
      {final bool? success,
      final String? message,
      final UserResumesDataModel? data}) = _$UserResumesResponseModelImpl;

  factory _UserResumesResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserResumesResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  UserResumesDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserResumesResponseModelImplCopyWith<_$UserResumesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserResumesDataModel _$UserResumesDataModelFromJson(Map<String, dynamic> json) {
  return _UserResumesDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserResumesDataModel {
  UserDataModel? get userInfo => throw _privateConstructorUsedError;
  List<ResumeModel>? get resumes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResumesDataModelCopyWith<UserResumesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResumesDataModelCopyWith<$Res> {
  factory $UserResumesDataModelCopyWith(UserResumesDataModel value,
          $Res Function(UserResumesDataModel) then) =
      _$UserResumesDataModelCopyWithImpl<$Res, UserResumesDataModel>;
  @useResult
  $Res call({UserDataModel? userInfo, List<ResumeModel>? resumes});

  $UserDataModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$UserResumesDataModelCopyWithImpl<$Res,
        $Val extends UserResumesDataModel>
    implements $UserResumesDataModelCopyWith<$Res> {
  _$UserResumesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? resumes = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      resumes: freezed == resumes
          ? _value.resumes
          : resumes // ignore: cast_nullable_to_non_nullable
              as List<ResumeModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResumesDataModelImplCopyWith<$Res>
    implements $UserResumesDataModelCopyWith<$Res> {
  factory _$$UserResumesDataModelImplCopyWith(_$UserResumesDataModelImpl value,
          $Res Function(_$UserResumesDataModelImpl) then) =
      __$$UserResumesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDataModel? userInfo, List<ResumeModel>? resumes});

  @override
  $UserDataModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$UserResumesDataModelImplCopyWithImpl<$Res>
    extends _$UserResumesDataModelCopyWithImpl<$Res, _$UserResumesDataModelImpl>
    implements _$$UserResumesDataModelImplCopyWith<$Res> {
  __$$UserResumesDataModelImplCopyWithImpl(_$UserResumesDataModelImpl _value,
      $Res Function(_$UserResumesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? resumes = freezed,
  }) {
    return _then(_$UserResumesDataModelImpl(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      resumes: freezed == resumes
          ? _value._resumes
          : resumes // ignore: cast_nullable_to_non_nullable
              as List<ResumeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResumesDataModelImpl implements _UserResumesDataModel {
  const _$UserResumesDataModelImpl(
      {this.userInfo, final List<ResumeModel>? resumes})
      : _resumes = resumes;

  factory _$UserResumesDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResumesDataModelImplFromJson(json);

  @override
  final UserDataModel? userInfo;
  final List<ResumeModel>? _resumes;
  @override
  List<ResumeModel>? get resumes {
    final value = _resumes;
    if (value == null) return null;
    if (_resumes is EqualUnmodifiableListView) return _resumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserResumesDataModel(userInfo: $userInfo, resumes: $resumes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResumesDataModelImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            const DeepCollectionEquality().equals(other._resumes, _resumes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userInfo, const DeepCollectionEquality().hash(_resumes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResumesDataModelImplCopyWith<_$UserResumesDataModelImpl>
      get copyWith =>
          __$$UserResumesDataModelImplCopyWithImpl<_$UserResumesDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResumesDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserResumesDataModel implements UserResumesDataModel {
  const factory _UserResumesDataModel(
      {final UserDataModel? userInfo,
      final List<ResumeModel>? resumes}) = _$UserResumesDataModelImpl;

  factory _UserResumesDataModel.fromJson(Map<String, dynamic> json) =
      _$UserResumesDataModelImpl.fromJson;

  @override
  UserDataModel? get userInfo;
  @override
  List<ResumeModel>? get resumes;
  @override
  @JsonKey(ignore: true)
  _$$UserResumesDataModelImplCopyWith<_$UserResumesDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteResumeResponse _$DeleteResumeResponseFromJson(Map<String, dynamic> json) {
  return _DeleteResumeResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteResumeResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? success, String? message, dynamic data)
        userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? success, String? message, dynamic data)? userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? success, String? message, dynamic data)? userInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteResumeResponse value) userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteResumeResponse value)? userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteResumeResponse value)? userInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteResumeResponseCopyWith<DeleteResumeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteResumeResponseCopyWith<$Res> {
  factory $DeleteResumeResponseCopyWith(DeleteResumeResponse value,
          $Res Function(DeleteResumeResponse) then) =
      _$DeleteResumeResponseCopyWithImpl<$Res, DeleteResumeResponse>;
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class _$DeleteResumeResponseCopyWithImpl<$Res,
        $Val extends DeleteResumeResponse>
    implements $DeleteResumeResponseCopyWith<$Res> {
  _$DeleteResumeResponseCopyWithImpl(this._value, this._then);

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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteResumeResponseImplCopyWith<$Res>
    implements $DeleteResumeResponseCopyWith<$Res> {
  factory _$$DeleteResumeResponseImplCopyWith(_$DeleteResumeResponseImpl value,
          $Res Function(_$DeleteResumeResponseImpl) then) =
      __$$DeleteResumeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class __$$DeleteResumeResponseImplCopyWithImpl<$Res>
    extends _$DeleteResumeResponseCopyWithImpl<$Res, _$DeleteResumeResponseImpl>
    implements _$$DeleteResumeResponseImplCopyWith<$Res> {
  __$$DeleteResumeResponseImplCopyWithImpl(_$DeleteResumeResponseImpl _value,
      $Res Function(_$DeleteResumeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DeleteResumeResponseImpl(
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteResumeResponseImpl implements _DeleteResumeResponse {
  const _$DeleteResumeResponseImpl({this.success, this.message, this.data});

  factory _$DeleteResumeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteResumeResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'DeleteResumeResponse.userInfo(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteResumeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteResumeResponseImplCopyWith<_$DeleteResumeResponseImpl>
      get copyWith =>
          __$$DeleteResumeResponseImplCopyWithImpl<_$DeleteResumeResponseImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? success, String? message, dynamic data)
        userInfo,
  }) {
    return userInfo(success, message, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? success, String? message, dynamic data)? userInfo,
  }) {
    return userInfo?.call(success, message, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? success, String? message, dynamic data)? userInfo,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(success, message, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteResumeResponse value) userInfo,
  }) {
    return userInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteResumeResponse value)? userInfo,
  }) {
    return userInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteResumeResponse value)? userInfo,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteResumeResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteResumeResponse implements DeleteResumeResponse {
  const factory _DeleteResumeResponse(
      {final bool? success,
      final String? message,
      final dynamic data}) = _$DeleteResumeResponseImpl;

  factory _DeleteResumeResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteResumeResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteResumeResponseImplCopyWith<_$DeleteResumeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) {
  return _ResumeModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeModel {
  @JsonKey(name: 'resume_id')
  int? get resumeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  String? get downloadUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeModelCopyWith<ResumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeModelCopyWith<$Res> {
  factory $ResumeModelCopyWith(
          ResumeModel value, $Res Function(ResumeModel) then) =
      _$ResumeModelCopyWithImpl<$Res, ResumeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'resume_id') int? resumeId,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'download_url') String? downloadUrl});
}

/// @nodoc
class _$ResumeModelCopyWithImpl<$Res, $Val extends ResumeModel>
    implements $ResumeModelCopyWith<$Res> {
  _$ResumeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resumeId = freezed,
    Object? fileName = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_value.copyWith(
      resumeId: freezed == resumeId
          ? _value.resumeId
          : resumeId // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeModelImplCopyWith<$Res>
    implements $ResumeModelCopyWith<$Res> {
  factory _$$ResumeModelImplCopyWith(
          _$ResumeModelImpl value, $Res Function(_$ResumeModelImpl) then) =
      __$$ResumeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'resume_id') int? resumeId,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'download_url') String? downloadUrl});
}

/// @nodoc
class __$$ResumeModelImplCopyWithImpl<$Res>
    extends _$ResumeModelCopyWithImpl<$Res, _$ResumeModelImpl>
    implements _$$ResumeModelImplCopyWith<$Res> {
  __$$ResumeModelImplCopyWithImpl(
      _$ResumeModelImpl _value, $Res Function(_$ResumeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resumeId = freezed,
    Object? fileName = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_$ResumeModelImpl(
      resumeId: freezed == resumeId
          ? _value.resumeId
          : resumeId // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeModelImpl implements _ResumeModel {
  const _$ResumeModelImpl(
      {@JsonKey(name: 'resume_id') this.resumeId,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'download_url') this.downloadUrl});

  factory _$ResumeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeModelImplFromJson(json);

  @override
  @JsonKey(name: 'resume_id')
  final int? resumeId;
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;
  @override
  @JsonKey(name: 'download_url')
  final String? downloadUrl;

  @override
  String toString() {
    return 'ResumeModel(resumeId: $resumeId, fileName: $fileName, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeModelImpl &&
            (identical(other.resumeId, resumeId) ||
                other.resumeId == resumeId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resumeId, fileName, downloadUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      __$$ResumeModelImplCopyWithImpl<_$ResumeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeModelImplToJson(
      this,
    );
  }
}

abstract class _ResumeModel implements ResumeModel {
  const factory _ResumeModel(
          {@JsonKey(name: 'resume_id') final int? resumeId,
          @JsonKey(name: 'file_name') final String? fileName,
          @JsonKey(name: 'download_url') final String? downloadUrl}) =
      _$ResumeModelImpl;

  factory _ResumeModel.fromJson(Map<String, dynamic> json) =
      _$ResumeModelImpl.fromJson;

  @override
  @JsonKey(name: 'resume_id')
  int? get resumeId;
  @override
  @JsonKey(name: 'file_name')
  String? get fileName;
  @override
  @JsonKey(name: 'download_url')
  String? get downloadUrl;
  @override
  @JsonKey(ignore: true)
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
