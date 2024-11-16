// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOtpNumberResponseModel _$GetOtpNumberResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetOtpNumberResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetOtpNumberResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SendOtpResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOtpNumberResponseModelCopyWith<GetOtpNumberResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtpNumberResponseModelCopyWith<$Res> {
  factory $GetOtpNumberResponseModelCopyWith(GetOtpNumberResponseModel value,
          $Res Function(GetOtpNumberResponseModel) then) =
      _$GetOtpNumberResponseModelCopyWithImpl<$Res, GetOtpNumberResponseModel>;
  @useResult
  $Res call({bool? success, String? message, SendOtpResponse? data});

  $SendOtpResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetOtpNumberResponseModelCopyWithImpl<$Res,
        $Val extends GetOtpNumberResponseModel>
    implements $GetOtpNumberResponseModelCopyWith<$Res> {
  _$GetOtpNumberResponseModelCopyWithImpl(this._value, this._then);

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
              as SendOtpResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendOtpResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SendOtpResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetOtpNumberResponseModelImplCopyWith<$Res>
    implements $GetOtpNumberResponseModelCopyWith<$Res> {
  factory _$$GetOtpNumberResponseModelImplCopyWith(
          _$GetOtpNumberResponseModelImpl value,
          $Res Function(_$GetOtpNumberResponseModelImpl) then) =
      __$$GetOtpNumberResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, SendOtpResponse? data});

  @override
  $SendOtpResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOtpNumberResponseModelImplCopyWithImpl<$Res>
    extends _$GetOtpNumberResponseModelCopyWithImpl<$Res,
        _$GetOtpNumberResponseModelImpl>
    implements _$$GetOtpNumberResponseModelImplCopyWith<$Res> {
  __$$GetOtpNumberResponseModelImplCopyWithImpl(
      _$GetOtpNumberResponseModelImpl _value,
      $Res Function(_$GetOtpNumberResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetOtpNumberResponseModelImpl(
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
              as SendOtpResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOtpNumberResponseModelImpl implements _GetOtpNumberResponseModel {
  const _$GetOtpNumberResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$GetOtpNumberResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOtpNumberResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final SendOtpResponse? data;

  @override
  String toString() {
    return 'GetOtpNumberResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOtpNumberResponseModelImpl &&
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
  _$$GetOtpNumberResponseModelImplCopyWith<_$GetOtpNumberResponseModelImpl>
      get copyWith => __$$GetOtpNumberResponseModelImplCopyWithImpl<
          _$GetOtpNumberResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOtpNumberResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetOtpNumberResponseModel implements GetOtpNumberResponseModel {
  const factory _GetOtpNumberResponseModel(
      {final bool? success,
      final String? message,
      final SendOtpResponse? data}) = _$GetOtpNumberResponseModelImpl;

  factory _GetOtpNumberResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetOtpNumberResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  SendOtpResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOtpNumberResponseModelImplCopyWith<_$GetOtpNumberResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SendOtpResponse _$SendOtpResponseFromJson(Map<String, dynamic> json) {
  return _SendOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$SendOtpResponse {
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpResponseCopyWith<SendOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpResponseCopyWith<$Res> {
  factory $SendOtpResponseCopyWith(
          SendOtpResponse value, $Res Function(SendOtpResponse) then) =
      _$SendOtpResponseCopyWithImpl<$Res, SendOtpResponse>;
  @useResult
  $Res call({@JsonKey(name: "mobile_number") String? mobileNumber, int? otp});
}

/// @nodoc
class _$SendOtpResponseCopyWithImpl<$Res, $Val extends SendOtpResponse>
    implements $SendOtpResponseCopyWith<$Res> {
  _$SendOtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpResponseImplCopyWith<$Res>
    implements $SendOtpResponseCopyWith<$Res> {
  factory _$$SendOtpResponseImplCopyWith(_$SendOtpResponseImpl value,
          $Res Function(_$SendOtpResponseImpl) then) =
      __$$SendOtpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "mobile_number") String? mobileNumber, int? otp});
}

/// @nodoc
class __$$SendOtpResponseImplCopyWithImpl<$Res>
    extends _$SendOtpResponseCopyWithImpl<$Res, _$SendOtpResponseImpl>
    implements _$$SendOtpResponseImplCopyWith<$Res> {
  __$$SendOtpResponseImplCopyWithImpl(
      _$SendOtpResponseImpl _value, $Res Function(_$SendOtpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$SendOtpResponseImpl(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpResponseImpl implements _SendOtpResponse {
  const _$SendOtpResponseImpl(
      {@JsonKey(name: "mobile_number") this.mobileNumber, this.otp});

  factory _$SendOtpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpResponseImplFromJson(json);

  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  final int? otp;

  @override
  String toString() {
    return 'SendOtpResponse(mobileNumber: $mobileNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpResponseImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpResponseImplCopyWith<_$SendOtpResponseImpl> get copyWith =>
      __$$SendOtpResponseImplCopyWithImpl<_$SendOtpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpResponseImplToJson(
      this,
    );
  }
}

abstract class _SendOtpResponse implements SendOtpResponse {
  const factory _SendOtpResponse(
      {@JsonKey(name: "mobile_number") final String? mobileNumber,
      final int? otp}) = _$SendOtpResponseImpl;

  factory _SendOtpResponse.fromJson(Map<String, dynamic> json) =
      _$SendOtpResponseImpl.fromJson;

  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  int? get otp;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpResponseImplCopyWith<_$SendOtpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckOtpNumberResponseModel _$CheckOtpNumberResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CheckOtpNumberResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CheckOtpNumberResponseModel {
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
    required TResult Function(_CheckOtpNumberResponseModel value) userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckOtpNumberResponseModel value)? userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckOtpNumberResponseModel value)? userInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckOtpNumberResponseModelCopyWith<CheckOtpNumberResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOtpNumberResponseModelCopyWith<$Res> {
  factory $CheckOtpNumberResponseModelCopyWith(
          CheckOtpNumberResponseModel value,
          $Res Function(CheckOtpNumberResponseModel) then) =
      _$CheckOtpNumberResponseModelCopyWithImpl<$Res,
          CheckOtpNumberResponseModel>;
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class _$CheckOtpNumberResponseModelCopyWithImpl<$Res,
        $Val extends CheckOtpNumberResponseModel>
    implements $CheckOtpNumberResponseModelCopyWith<$Res> {
  _$CheckOtpNumberResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CheckOtpNumberResponseModelImplCopyWith<$Res>
    implements $CheckOtpNumberResponseModelCopyWith<$Res> {
  factory _$$CheckOtpNumberResponseModelImplCopyWith(
          _$CheckOtpNumberResponseModelImpl value,
          $Res Function(_$CheckOtpNumberResponseModelImpl) then) =
      __$$CheckOtpNumberResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class __$$CheckOtpNumberResponseModelImplCopyWithImpl<$Res>
    extends _$CheckOtpNumberResponseModelCopyWithImpl<$Res,
        _$CheckOtpNumberResponseModelImpl>
    implements _$$CheckOtpNumberResponseModelImplCopyWith<$Res> {
  __$$CheckOtpNumberResponseModelImplCopyWithImpl(
      _$CheckOtpNumberResponseModelImpl _value,
      $Res Function(_$CheckOtpNumberResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CheckOtpNumberResponseModelImpl(
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
class _$CheckOtpNumberResponseModelImpl
    implements _CheckOtpNumberResponseModel {
  const _$CheckOtpNumberResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$CheckOtpNumberResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckOtpNumberResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'CheckOtpNumberResponseModel.userInfo(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOtpNumberResponseModelImpl &&
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
  _$$CheckOtpNumberResponseModelImplCopyWith<_$CheckOtpNumberResponseModelImpl>
      get copyWith => __$$CheckOtpNumberResponseModelImplCopyWithImpl<
          _$CheckOtpNumberResponseModelImpl>(this, _$identity);

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
    required TResult Function(_CheckOtpNumberResponseModel value) userInfo,
  }) {
    return userInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckOtpNumberResponseModel value)? userInfo,
  }) {
    return userInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckOtpNumberResponseModel value)? userInfo,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckOtpNumberResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CheckOtpNumberResponseModel
    implements CheckOtpNumberResponseModel {
  const factory _CheckOtpNumberResponseModel(
      {final bool? success,
      final String? message,
      final dynamic data}) = _$CheckOtpNumberResponseModelImpl;

  factory _CheckOtpNumberResponseModel.fromJson(Map<String, dynamic> json) =
      _$CheckOtpNumberResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckOtpNumberResponseModelImplCopyWith<_$CheckOtpNumberResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) {
  return _VerifyOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponse {
  UserDataModel? get userInfo => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseCopyWith<VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseCopyWith<$Res> {
  factory $VerifyOtpResponseCopyWith(
          VerifyOtpResponse value, $Res Function(VerifyOtpResponse) then) =
      _$VerifyOtpResponseCopyWithImpl<$Res, VerifyOtpResponse>;
  @useResult
  $Res call({UserDataModel? userInfo, String? token});

  $UserDataModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$VerifyOtpResponseCopyWithImpl<$Res, $Val extends VerifyOtpResponse>
    implements $VerifyOtpResponseCopyWith<$Res> {
  _$VerifyOtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$VerifyOtpResponseImplCopyWith<$Res>
    implements $VerifyOtpResponseCopyWith<$Res> {
  factory _$$VerifyOtpResponseImplCopyWith(_$VerifyOtpResponseImpl value,
          $Res Function(_$VerifyOtpResponseImpl) then) =
      __$$VerifyOtpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDataModel? userInfo, String? token});

  @override
  $UserDataModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$VerifyOtpResponseImplCopyWithImpl<$Res>
    extends _$VerifyOtpResponseCopyWithImpl<$Res, _$VerifyOtpResponseImpl>
    implements _$$VerifyOtpResponseImplCopyWith<$Res> {
  __$$VerifyOtpResponseImplCopyWithImpl(_$VerifyOtpResponseImpl _value,
      $Res Function(_$VerifyOtpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? token = freezed,
  }) {
    return _then(_$VerifyOtpResponseImpl(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpResponseImpl implements _VerifyOtpResponse {
  const _$VerifyOtpResponseImpl({this.userInfo, this.token});

  factory _$VerifyOtpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpResponseImplFromJson(json);

  @override
  final UserDataModel? userInfo;
  @override
  final String? token;

  @override
  String toString() {
    return 'VerifyOtpResponse(userInfo: $userInfo, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpResponseImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userInfo, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpResponseImplCopyWith<_$VerifyOtpResponseImpl> get copyWith =>
      __$$VerifyOtpResponseImplCopyWithImpl<_$VerifyOtpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponse implements VerifyOtpResponse {
  const factory _VerifyOtpResponse(
      {final UserDataModel? userInfo,
      final String? token}) = _$VerifyOtpResponseImpl;

  factory _VerifyOtpResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpResponseImpl.fromJson;

  @override
  UserDataModel? get userInfo;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpResponseImplCopyWith<_$VerifyOtpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadWorkExperienceResponseModel _$UploadWorkExperienceResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UploadWorkExperienceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UploadWorkExperienceResponseModel {
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
    required TResult Function(_UploadWorkExperienceResponseModel value)
        userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadWorkExperienceResponseModel value)? userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadWorkExperienceResponseModel value)? userInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadWorkExperienceResponseModelCopyWith<UploadWorkExperienceResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadWorkExperienceResponseModelCopyWith<$Res> {
  factory $UploadWorkExperienceResponseModelCopyWith(
          UploadWorkExperienceResponseModel value,
          $Res Function(UploadWorkExperienceResponseModel) then) =
      _$UploadWorkExperienceResponseModelCopyWithImpl<$Res,
          UploadWorkExperienceResponseModel>;
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class _$UploadWorkExperienceResponseModelCopyWithImpl<$Res,
        $Val extends UploadWorkExperienceResponseModel>
    implements $UploadWorkExperienceResponseModelCopyWith<$Res> {
  _$UploadWorkExperienceResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UploadWorkExperienceResponseModelImplCopyWith<$Res>
    implements $UploadWorkExperienceResponseModelCopyWith<$Res> {
  factory _$$UploadWorkExperienceResponseModelImplCopyWith(
          _$UploadWorkExperienceResponseModelImpl value,
          $Res Function(_$UploadWorkExperienceResponseModelImpl) then) =
      __$$UploadWorkExperienceResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class __$$UploadWorkExperienceResponseModelImplCopyWithImpl<$Res>
    extends _$UploadWorkExperienceResponseModelCopyWithImpl<$Res,
        _$UploadWorkExperienceResponseModelImpl>
    implements _$$UploadWorkExperienceResponseModelImplCopyWith<$Res> {
  __$$UploadWorkExperienceResponseModelImplCopyWithImpl(
      _$UploadWorkExperienceResponseModelImpl _value,
      $Res Function(_$UploadWorkExperienceResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UploadWorkExperienceResponseModelImpl(
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
class _$UploadWorkExperienceResponseModelImpl
    implements _UploadWorkExperienceResponseModel {
  const _$UploadWorkExperienceResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$UploadWorkExperienceResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UploadWorkExperienceResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'UploadWorkExperienceResponseModel.userInfo(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadWorkExperienceResponseModelImpl &&
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
  _$$UploadWorkExperienceResponseModelImplCopyWith<
          _$UploadWorkExperienceResponseModelImpl>
      get copyWith => __$$UploadWorkExperienceResponseModelImplCopyWithImpl<
          _$UploadWorkExperienceResponseModelImpl>(this, _$identity);

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
    required TResult Function(_UploadWorkExperienceResponseModel value)
        userInfo,
  }) {
    return userInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadWorkExperienceResponseModel value)? userInfo,
  }) {
    return userInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadWorkExperienceResponseModel value)? userInfo,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadWorkExperienceResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UploadWorkExperienceResponseModel
    implements UploadWorkExperienceResponseModel {
  const factory _UploadWorkExperienceResponseModel(
      {final bool? success,
      final String? message,
      final dynamic data}) = _$UploadWorkExperienceResponseModelImpl;

  factory _UploadWorkExperienceResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$UploadWorkExperienceResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$UploadWorkExperienceResponseModelImplCopyWith<
          _$UploadWorkExperienceResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserWorkExperienceResponseModel _$UserWorkExperienceResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserWorkExperienceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserWorkExperienceResponseModel {
  UserDataModel? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWorkExperienceResponseModelCopyWith<UserWorkExperienceResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWorkExperienceResponseModelCopyWith<$Res> {
  factory $UserWorkExperienceResponseModelCopyWith(
          UserWorkExperienceResponseModel value,
          $Res Function(UserWorkExperienceResponseModel) then) =
      _$UserWorkExperienceResponseModelCopyWithImpl<$Res,
          UserWorkExperienceResponseModel>;
  @useResult
  $Res call({UserDataModel? user, String? token});

  $UserDataModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserWorkExperienceResponseModelCopyWithImpl<$Res,
        $Val extends UserWorkExperienceResponseModel>
    implements $UserWorkExperienceResponseModelCopyWith<$Res> {
  _$UserWorkExperienceResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserWorkExperienceResponseModelImplCopyWith<$Res>
    implements $UserWorkExperienceResponseModelCopyWith<$Res> {
  factory _$$UserWorkExperienceResponseModelImplCopyWith(
          _$UserWorkExperienceResponseModelImpl value,
          $Res Function(_$UserWorkExperienceResponseModelImpl) then) =
      __$$UserWorkExperienceResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDataModel? user, String? token});

  @override
  $UserDataModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserWorkExperienceResponseModelImplCopyWithImpl<$Res>
    extends _$UserWorkExperienceResponseModelCopyWithImpl<$Res,
        _$UserWorkExperienceResponseModelImpl>
    implements _$$UserWorkExperienceResponseModelImplCopyWith<$Res> {
  __$$UserWorkExperienceResponseModelImplCopyWithImpl(
      _$UserWorkExperienceResponseModelImpl _value,
      $Res Function(_$UserWorkExperienceResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserWorkExperienceResponseModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWorkExperienceResponseModelImpl
    implements _UserWorkExperienceResponseModel {
  const _$UserWorkExperienceResponseModelImpl({this.user, this.token});

  factory _$UserWorkExperienceResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserWorkExperienceResponseModelImplFromJson(json);

  @override
  final UserDataModel? user;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserWorkExperienceResponseModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWorkExperienceResponseModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWorkExperienceResponseModelImplCopyWith<
          _$UserWorkExperienceResponseModelImpl>
      get copyWith => __$$UserWorkExperienceResponseModelImplCopyWithImpl<
          _$UserWorkExperienceResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWorkExperienceResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserWorkExperienceResponseModel
    implements UserWorkExperienceResponseModel {
  const factory _UserWorkExperienceResponseModel(
      {final UserDataModel? user,
      final String? token}) = _$UserWorkExperienceResponseModelImpl;

  factory _UserWorkExperienceResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserWorkExperienceResponseModelImpl.fromJson;

  @override
  UserDataModel? get user;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$UserWorkExperienceResponseModelImplCopyWith<
          _$UserWorkExperienceResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sur_name")
  String? get surName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "middle_name")
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "user_process")
  String? get userProcess => throw _privateConstructorUsedError;
  @JsonKey(name: "otp_generated_date_time")
  DateTime? get otpGeneratedDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_user_type")
  String? get isUserType => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_order")
  String? get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sur_name") String? surName,
      String? name,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "profile_pic") String? profilePic,
      String? email,
      @JsonKey(name: "email_verified_at") DateTime? emailVerifiedAt,
      @JsonKey(name: "mobile_number") String? mobileNumber,
      String? otp,
      @JsonKey(name: "user_process") String? userProcess,
      @JsonKey(name: "otp_generated_date_time") DateTime? otpGeneratedDateTime,
      @JsonKey(name: "is_user_type") String? isUserType,
      @JsonKey(name: "access_token") String? accessToken,
      String? status,
      @JsonKey(name: "sort_order") String? sortOrder,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surName = freezed,
    Object? name = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? profilePic = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? mobileNumber = freezed,
    Object? otp = freezed,
    Object? userProcess = freezed,
    Object? otpGeneratedDateTime = freezed,
    Object? isUserType = freezed,
    Object? accessToken = freezed,
    Object? status = freezed,
    Object? sortOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      surName: freezed == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      userProcess: freezed == userProcess
          ? _value.userProcess
          : userProcess // ignore: cast_nullable_to_non_nullable
              as String?,
      otpGeneratedDateTime: freezed == otpGeneratedDateTime
          ? _value.otpGeneratedDateTime
          : otpGeneratedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUserType: freezed == isUserType
          ? _value.isUserType
          : isUserType // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataModelImplCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$UserDataModelImplCopyWith(
          _$UserDataModelImpl value, $Res Function(_$UserDataModelImpl) then) =
      __$$UserDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sur_name") String? surName,
      String? name,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "profile_pic") String? profilePic,
      String? email,
      @JsonKey(name: "email_verified_at") DateTime? emailVerifiedAt,
      @JsonKey(name: "mobile_number") String? mobileNumber,
      String? otp,
      @JsonKey(name: "user_process") String? userProcess,
      @JsonKey(name: "otp_generated_date_time") DateTime? otpGeneratedDateTime,
      @JsonKey(name: "is_user_type") String? isUserType,
      @JsonKey(name: "access_token") String? accessToken,
      String? status,
      @JsonKey(name: "sort_order") String? sortOrder,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$UserDataModelImplCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$UserDataModelImpl>
    implements _$$UserDataModelImplCopyWith<$Res> {
  __$$UserDataModelImplCopyWithImpl(
      _$UserDataModelImpl _value, $Res Function(_$UserDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surName = freezed,
    Object? name = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? profilePic = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? mobileNumber = freezed,
    Object? otp = freezed,
    Object? userProcess = freezed,
    Object? otpGeneratedDateTime = freezed,
    Object? isUserType = freezed,
    Object? accessToken = freezed,
    Object? status = freezed,
    Object? sortOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      surName: freezed == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      userProcess: freezed == userProcess
          ? _value.userProcess
          : userProcess // ignore: cast_nullable_to_non_nullable
              as String?,
      otpGeneratedDateTime: freezed == otpGeneratedDateTime
          ? _value.otpGeneratedDateTime
          : otpGeneratedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUserType: freezed == isUserType
          ? _value.isUserType
          : isUserType // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataModelImpl implements _UserDataModel {
  const _$UserDataModelImpl(
      {this.id,
      @JsonKey(name: "sur_name") this.surName,
      this.name,
      @JsonKey(name: "middle_name") this.middleName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "profile_pic") this.profilePic,
      this.email,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      @JsonKey(name: "mobile_number") this.mobileNumber,
      this.otp,
      @JsonKey(name: "user_process") this.userProcess,
      @JsonKey(name: "otp_generated_date_time") this.otpGeneratedDateTime,
      @JsonKey(name: "is_user_type") this.isUserType,
      @JsonKey(name: "access_token") this.accessToken,
      this.status,
      @JsonKey(name: "sort_order") this.sortOrder,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$UserDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "sur_name")
  final String? surName;
  @override
  final String? name;
  @override
  @JsonKey(name: "middle_name")
  final String? middleName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  final String? email;
  @override
  @JsonKey(name: "email_verified_at")
  final DateTime? emailVerifiedAt;
  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  final String? otp;
  @override
  @JsonKey(name: "user_process")
  final String? userProcess;
  @override
  @JsonKey(name: "otp_generated_date_time")
  final DateTime? otpGeneratedDateTime;
  @override
  @JsonKey(name: "is_user_type")
  final String? isUserType;
  @override
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override
  final String? status;
  @override
  @JsonKey(name: "sort_order")
  final String? sortOrder;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserDataModel(id: $id, surName: $surName, name: $name, middleName: $middleName, lastName: $lastName, profilePic: $profilePic, email: $email, emailVerifiedAt: $emailVerifiedAt, mobileNumber: $mobileNumber, otp: $otp, userProcess: $userProcess, otpGeneratedDateTime: $otpGeneratedDateTime, isUserType: $isUserType, accessToken: $accessToken, status: $status, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userProcess, userProcess) ||
                other.userProcess == userProcess) &&
            (identical(other.otpGeneratedDateTime, otpGeneratedDateTime) ||
                other.otpGeneratedDateTime == otpGeneratedDateTime) &&
            (identical(other.isUserType, isUserType) ||
                other.isUserType == isUserType) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      surName,
      name,
      middleName,
      lastName,
      profilePic,
      email,
      emailVerifiedAt,
      mobileNumber,
      otp,
      userProcess,
      otpGeneratedDateTime,
      isUserType,
      accessToken,
      status,
      sortOrder,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      __$$UserDataModelImplCopyWithImpl<_$UserDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
          {final int? id,
          @JsonKey(name: "sur_name") final String? surName,
          final String? name,
          @JsonKey(name: "middle_name") final String? middleName,
          @JsonKey(name: "last_name") final String? lastName,
          @JsonKey(name: "profile_pic") final String? profilePic,
          final String? email,
          @JsonKey(name: "email_verified_at") final DateTime? emailVerifiedAt,
          @JsonKey(name: "mobile_number") final String? mobileNumber,
          final String? otp,
          @JsonKey(name: "user_process") final String? userProcess,
          @JsonKey(name: "otp_generated_date_time")
          final DateTime? otpGeneratedDateTime,
          @JsonKey(name: "is_user_type") final String? isUserType,
          @JsonKey(name: "access_token") final String? accessToken,
          final String? status,
          @JsonKey(name: "sort_order") final String? sortOrder,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$UserDataModelImpl;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$UserDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "sur_name")
  String? get surName;
  @override
  String? get name;
  @override
  @JsonKey(name: "middle_name")
  String? get middleName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  String? get email;
  @override
  @JsonKey(name: "email_verified_at")
  DateTime? get emailVerifiedAt;
  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  String? get otp;
  @override
  @JsonKey(name: "user_process")
  String? get userProcess;
  @override
  @JsonKey(name: "otp_generated_date_time")
  DateTime? get otpGeneratedDateTime;
  @override
  @JsonKey(name: "is_user_type")
  String? get isUserType;
  @override
  @JsonKey(name: "access_token")
  String? get accessToken;
  @override
  String? get status;
  @override
  @JsonKey(name: "sort_order")
  String? get sortOrder;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetUserExperienceResponse _$GetUserExperienceResponseFromJson(
    Map<String, dynamic> json) {
  return _GetUserExperienceResponse.fromJson(json);
}

/// @nodoc
mixin _$GetUserExperienceResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ExperienceData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserExperienceResponseCopyWith<GetUserExperienceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserExperienceResponseCopyWith<$Res> {
  factory $GetUserExperienceResponseCopyWith(GetUserExperienceResponse value,
          $Res Function(GetUserExperienceResponse) then) =
      _$GetUserExperienceResponseCopyWithImpl<$Res, GetUserExperienceResponse>;
  @useResult
  $Res call({bool? success, String? message, List<ExperienceData>? data});
}

/// @nodoc
class _$GetUserExperienceResponseCopyWithImpl<$Res,
        $Val extends GetUserExperienceResponse>
    implements $GetUserExperienceResponseCopyWith<$Res> {
  _$GetUserExperienceResponseCopyWithImpl(this._value, this._then);

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
              as List<ExperienceData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserExperienceResponseImplCopyWith<$Res>
    implements $GetUserExperienceResponseCopyWith<$Res> {
  factory _$$GetUserExperienceResponseImplCopyWith(
          _$GetUserExperienceResponseImpl value,
          $Res Function(_$GetUserExperienceResponseImpl) then) =
      __$$GetUserExperienceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, List<ExperienceData>? data});
}

/// @nodoc
class __$$GetUserExperienceResponseImplCopyWithImpl<$Res>
    extends _$GetUserExperienceResponseCopyWithImpl<$Res,
        _$GetUserExperienceResponseImpl>
    implements _$$GetUserExperienceResponseImplCopyWith<$Res> {
  __$$GetUserExperienceResponseImplCopyWithImpl(
      _$GetUserExperienceResponseImpl _value,
      $Res Function(_$GetUserExperienceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetUserExperienceResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExperienceData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserExperienceResponseImpl implements _GetUserExperienceResponse {
  const _$GetUserExperienceResponseImpl(
      {this.success, this.message, final List<ExperienceData>? data})
      : _data = data;

  factory _$GetUserExperienceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserExperienceResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<ExperienceData>? _data;
  @override
  List<ExperienceData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetUserExperienceResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserExperienceResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserExperienceResponseImplCopyWith<_$GetUserExperienceResponseImpl>
      get copyWith => __$$GetUserExperienceResponseImplCopyWithImpl<
          _$GetUserExperienceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserExperienceResponseImplToJson(
      this,
    );
  }
}

abstract class _GetUserExperienceResponse implements GetUserExperienceResponse {
  const factory _GetUserExperienceResponse(
      {final bool? success,
      final String? message,
      final List<ExperienceData>? data}) = _$GetUserExperienceResponseImpl;

  factory _GetUserExperienceResponse.fromJson(Map<String, dynamic> json) =
      _$GetUserExperienceResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<ExperienceData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUserExperienceResponseImplCopyWith<_$GetUserExperienceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExperienceData _$ExperienceDataFromJson(Map<String, dynamic> json) {
  return _ExperienceData.fromJson(json);
}

/// @nodoc
mixin _$ExperienceData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperienceDataCopyWith<ExperienceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceDataCopyWith<$Res> {
  factory $ExperienceDataCopyWith(
          ExperienceData value, $Res Function(ExperienceData) then) =
      _$ExperienceDataCopyWithImpl<$Res, ExperienceData>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$ExperienceDataCopyWithImpl<$Res, $Val extends ExperienceData>
    implements $ExperienceDataCopyWith<$Res> {
  _$ExperienceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceDataImplCopyWith<$Res>
    implements $ExperienceDataCopyWith<$Res> {
  factory _$$ExperienceDataImplCopyWith(_$ExperienceDataImpl value,
          $Res Function(_$ExperienceDataImpl) then) =
      __$$ExperienceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$ExperienceDataImplCopyWithImpl<$Res>
    extends _$ExperienceDataCopyWithImpl<$Res, _$ExperienceDataImpl>
    implements _$$ExperienceDataImplCopyWith<$Res> {
  __$$ExperienceDataImplCopyWithImpl(
      _$ExperienceDataImpl _value, $Res Function(_$ExperienceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ExperienceDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceDataImpl implements _ExperienceData {
  const _$ExperienceDataImpl({this.id, this.name});

  factory _$ExperienceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ExperienceData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceDataImplCopyWith<_$ExperienceDataImpl> get copyWith =>
      __$$ExperienceDataImplCopyWithImpl<_$ExperienceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceDataImplToJson(
      this,
    );
  }
}

abstract class _ExperienceData implements ExperienceData {
  const factory _ExperienceData({final int? id, final String? name}) =
      _$ExperienceDataImpl;

  factory _ExperienceData.fromJson(Map<String, dynamic> json) =
      _$ExperienceDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceDataImplCopyWith<_$ExperienceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
