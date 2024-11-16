// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOtpNumberRequestModel _$GetOtpNumberRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetOtpNumberRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetOtpNumberRequestModel {
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOtpNumberRequestModelCopyWith<GetOtpNumberRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtpNumberRequestModelCopyWith<$Res> {
  factory $GetOtpNumberRequestModelCopyWith(GetOtpNumberRequestModel value,
          $Res Function(GetOtpNumberRequestModel) then) =
      _$GetOtpNumberRequestModelCopyWithImpl<$Res, GetOtpNumberRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "mobile_number") String? mobileNumber});
}

/// @nodoc
class _$GetOtpNumberRequestModelCopyWithImpl<$Res,
        $Val extends GetOtpNumberRequestModel>
    implements $GetOtpNumberRequestModelCopyWith<$Res> {
  _$GetOtpNumberRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOtpNumberRequestModelImplCopyWith<$Res>
    implements $GetOtpNumberRequestModelCopyWith<$Res> {
  factory _$$GetOtpNumberRequestModelImplCopyWith(
          _$GetOtpNumberRequestModelImpl value,
          $Res Function(_$GetOtpNumberRequestModelImpl) then) =
      __$$GetOtpNumberRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "mobile_number") String? mobileNumber});
}

/// @nodoc
class __$$GetOtpNumberRequestModelImplCopyWithImpl<$Res>
    extends _$GetOtpNumberRequestModelCopyWithImpl<$Res,
        _$GetOtpNumberRequestModelImpl>
    implements _$$GetOtpNumberRequestModelImplCopyWith<$Res> {
  __$$GetOtpNumberRequestModelImplCopyWithImpl(
      _$GetOtpNumberRequestModelImpl _value,
      $Res Function(_$GetOtpNumberRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_$GetOtpNumberRequestModelImpl(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOtpNumberRequestModelImpl implements _GetOtpNumberRequestModel {
  const _$GetOtpNumberRequestModelImpl(
      {@JsonKey(name: "mobile_number") this.mobileNumber});

  factory _$GetOtpNumberRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOtpNumberRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;

  @override
  String toString() {
    return 'GetOtpNumberRequestModel(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOtpNumberRequestModelImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOtpNumberRequestModelImplCopyWith<_$GetOtpNumberRequestModelImpl>
      get copyWith => __$$GetOtpNumberRequestModelImplCopyWithImpl<
          _$GetOtpNumberRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOtpNumberRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetOtpNumberRequestModel implements GetOtpNumberRequestModel {
  const factory _GetOtpNumberRequestModel(
          {@JsonKey(name: "mobile_number") final String? mobileNumber}) =
      _$GetOtpNumberRequestModelImpl;

  factory _GetOtpNumberRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetOtpNumberRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$GetOtpNumberRequestModelImplCopyWith<_$GetOtpNumberRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheckOtpNumberRequestModel _$CheckOtpNumberRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CheckOtpNumberRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CheckOtpNumberRequestModel {
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckOtpNumberRequestModelCopyWith<CheckOtpNumberRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOtpNumberRequestModelCopyWith<$Res> {
  factory $CheckOtpNumberRequestModelCopyWith(CheckOtpNumberRequestModel value,
          $Res Function(CheckOtpNumberRequestModel) then) =
      _$CheckOtpNumberRequestModelCopyWithImpl<$Res,
          CheckOtpNumberRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "mobile_number") String? mobileNumber, String? otp});
}

/// @nodoc
class _$CheckOtpNumberRequestModelCopyWithImpl<$Res,
        $Val extends CheckOtpNumberRequestModel>
    implements $CheckOtpNumberRequestModelCopyWith<$Res> {
  _$CheckOtpNumberRequestModelCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckOtpNumberRequestModelImplCopyWith<$Res>
    implements $CheckOtpNumberRequestModelCopyWith<$Res> {
  factory _$$CheckOtpNumberRequestModelImplCopyWith(
          _$CheckOtpNumberRequestModelImpl value,
          $Res Function(_$CheckOtpNumberRequestModelImpl) then) =
      __$$CheckOtpNumberRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mobile_number") String? mobileNumber, String? otp});
}

/// @nodoc
class __$$CheckOtpNumberRequestModelImplCopyWithImpl<$Res>
    extends _$CheckOtpNumberRequestModelCopyWithImpl<$Res,
        _$CheckOtpNumberRequestModelImpl>
    implements _$$CheckOtpNumberRequestModelImplCopyWith<$Res> {
  __$$CheckOtpNumberRequestModelImplCopyWithImpl(
      _$CheckOtpNumberRequestModelImpl _value,
      $Res Function(_$CheckOtpNumberRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$CheckOtpNumberRequestModelImpl(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckOtpNumberRequestModelImpl implements _CheckOtpNumberRequestModel {
  const _$CheckOtpNumberRequestModelImpl(
      {@JsonKey(name: "mobile_number") this.mobileNumber, this.otp});

  factory _$CheckOtpNumberRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckOtpNumberRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  final String? otp;

  @override
  String toString() {
    return 'CheckOtpNumberRequestModel(mobileNumber: $mobileNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOtpNumberRequestModelImpl &&
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
  _$$CheckOtpNumberRequestModelImplCopyWith<_$CheckOtpNumberRequestModelImpl>
      get copyWith => __$$CheckOtpNumberRequestModelImplCopyWithImpl<
          _$CheckOtpNumberRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckOtpNumberRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CheckOtpNumberRequestModel
    implements CheckOtpNumberRequestModel {
  const factory _CheckOtpNumberRequestModel(
      {@JsonKey(name: "mobile_number") final String? mobileNumber,
      final String? otp}) = _$CheckOtpNumberRequestModelImpl;

  factory _CheckOtpNumberRequestModel.fromJson(Map<String, dynamic> json) =
      _$CheckOtpNumberRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$CheckOtpNumberRequestModelImplCopyWith<_$CheckOtpNumberRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserWorkExperienceRequestModel _$UserWorkExperienceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UserWorkExperienceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UserWorkExperienceRequestModel {
  String? get userId => throw _privateConstructorUsedError;
  String? get userExperienceId => throw _privateConstructorUsedError;
  String? get yearsOfExperienced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWorkExperienceRequestModelCopyWith<UserWorkExperienceRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWorkExperienceRequestModelCopyWith<$Res> {
  factory $UserWorkExperienceRequestModelCopyWith(
          UserWorkExperienceRequestModel value,
          $Res Function(UserWorkExperienceRequestModel) then) =
      _$UserWorkExperienceRequestModelCopyWithImpl<$Res,
          UserWorkExperienceRequestModel>;
  @useResult
  $Res call(
      {String? userId, String? userExperienceId, String? yearsOfExperienced});
}

/// @nodoc
class _$UserWorkExperienceRequestModelCopyWithImpl<$Res,
        $Val extends UserWorkExperienceRequestModel>
    implements $UserWorkExperienceRequestModelCopyWith<$Res> {
  _$UserWorkExperienceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userExperienceId = freezed,
    Object? yearsOfExperienced = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userExperienceId: freezed == userExperienceId
          ? _value.userExperienceId
          : userExperienceId // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExperienced: freezed == yearsOfExperienced
          ? _value.yearsOfExperienced
          : yearsOfExperienced // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserWorkExperienceRequestModelImplCopyWith<$Res>
    implements $UserWorkExperienceRequestModelCopyWith<$Res> {
  factory _$$UserWorkExperienceRequestModelImplCopyWith(
          _$UserWorkExperienceRequestModelImpl value,
          $Res Function(_$UserWorkExperienceRequestModelImpl) then) =
      __$$UserWorkExperienceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? userExperienceId, String? yearsOfExperienced});
}

/// @nodoc
class __$$UserWorkExperienceRequestModelImplCopyWithImpl<$Res>
    extends _$UserWorkExperienceRequestModelCopyWithImpl<$Res,
        _$UserWorkExperienceRequestModelImpl>
    implements _$$UserWorkExperienceRequestModelImplCopyWith<$Res> {
  __$$UserWorkExperienceRequestModelImplCopyWithImpl(
      _$UserWorkExperienceRequestModelImpl _value,
      $Res Function(_$UserWorkExperienceRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userExperienceId = freezed,
    Object? yearsOfExperienced = freezed,
  }) {
    return _then(_$UserWorkExperienceRequestModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userExperienceId: freezed == userExperienceId
          ? _value.userExperienceId
          : userExperienceId // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExperienced: freezed == yearsOfExperienced
          ? _value.yearsOfExperienced
          : yearsOfExperienced // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWorkExperienceRequestModelImpl
    implements _UserWorkExperienceRequestModel {
  const _$UserWorkExperienceRequestModelImpl(
      {this.userId, this.userExperienceId, this.yearsOfExperienced});

  factory _$UserWorkExperienceRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserWorkExperienceRequestModelImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? userExperienceId;
  @override
  final String? yearsOfExperienced;

  @override
  String toString() {
    return 'UserWorkExperienceRequestModel(userId: $userId, userExperienceId: $userExperienceId, yearsOfExperienced: $yearsOfExperienced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWorkExperienceRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userExperienceId, userExperienceId) ||
                other.userExperienceId == userExperienceId) &&
            (identical(other.yearsOfExperienced, yearsOfExperienced) ||
                other.yearsOfExperienced == yearsOfExperienced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userExperienceId, yearsOfExperienced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWorkExperienceRequestModelImplCopyWith<
          _$UserWorkExperienceRequestModelImpl>
      get copyWith => __$$UserWorkExperienceRequestModelImplCopyWithImpl<
          _$UserWorkExperienceRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWorkExperienceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UserWorkExperienceRequestModel
    implements UserWorkExperienceRequestModel {
  const factory _UserWorkExperienceRequestModel(
      {final String? userId,
      final String? userExperienceId,
      final String? yearsOfExperienced}) = _$UserWorkExperienceRequestModelImpl;

  factory _UserWorkExperienceRequestModel.fromJson(Map<String, dynamic> json) =
      _$UserWorkExperienceRequestModelImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get userExperienceId;
  @override
  String? get yearsOfExperienced;
  @override
  @JsonKey(ignore: true)
  _$$UserWorkExperienceRequestModelImplCopyWith<
          _$UserWorkExperienceRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
