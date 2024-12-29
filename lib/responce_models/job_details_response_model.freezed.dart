// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobDetailsResponseModel _$JobDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _JobDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$JobDetailsResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailsResponseModelCopyWith<JobDetailsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsResponseModelCopyWith<$Res> {
  factory $JobDetailsResponseModelCopyWith(JobDetailsResponseModel value,
          $Res Function(JobDetailsResponseModel) then) =
      _$JobDetailsResponseModelCopyWithImpl<$Res, JobDetailsResponseModel>;
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class _$JobDetailsResponseModelCopyWithImpl<$Res,
        $Val extends JobDetailsResponseModel>
    implements $JobDetailsResponseModelCopyWith<$Res> {
  _$JobDetailsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$JobDetailsResponseModelImplCopyWith<$Res>
    implements $JobDetailsResponseModelCopyWith<$Res> {
  factory _$$JobDetailsResponseModelImplCopyWith(
          _$JobDetailsResponseModelImpl value,
          $Res Function(_$JobDetailsResponseModelImpl) then) =
      __$$JobDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class __$$JobDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$JobDetailsResponseModelCopyWithImpl<$Res,
        _$JobDetailsResponseModelImpl>
    implements _$$JobDetailsResponseModelImplCopyWith<$Res> {
  __$$JobDetailsResponseModelImplCopyWithImpl(
      _$JobDetailsResponseModelImpl _value,
      $Res Function(_$JobDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$JobDetailsResponseModelImpl(
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
class _$JobDetailsResponseModelImpl implements _JobDetailsResponseModel {
  const _$JobDetailsResponseModelImpl({this.success, this.message, this.data});

  factory _$JobDetailsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDetailsResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'JobDetailsResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsResponseModelImpl &&
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
  _$$JobDetailsResponseModelImplCopyWith<_$JobDetailsResponseModelImpl>
      get copyWith => __$$JobDetailsResponseModelImplCopyWithImpl<
          _$JobDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _JobDetailsResponseModel implements JobDetailsResponseModel {
  const factory _JobDetailsResponseModel(
      {final bool? success,
      final String? message,
      final dynamic data}) = _$JobDetailsResponseModelImpl;

  factory _JobDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$JobDetailsResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$JobDetailsResponseModelImplCopyWith<_$JobDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JobDetailsModel _$JobDetailsModelFromJson(Map<String, dynamic> json) {
  return _JobDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$JobDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  String? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type_id')
  String? get jobTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  String? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  String? get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  String? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  String? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_level_id')
  String? get experienceLevelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_id')
  String? get salaryId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_type_job')
  String? get isTypeJob => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  String? get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_date')
  String? get postDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_companies')
  Company? get getCompanies => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_categories')
  Category? get getCategories => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_job_types')
  JobType? get getJobTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_experience_levels')
  ExperienceLevel? get getExperienceLevels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailsModelCopyWith<JobDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsModelCopyWith<$Res> {
  factory $JobDetailsModelCopyWith(
          JobDetailsModel value, $Res Function(JobDetailsModel) then) =
      _$JobDetailsModelCopyWithImpl<$Res, JobDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'company_id') String? companyId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'job_type_id') String? jobTypeId,
      @JsonKey(name: 'country_id') String? countryId,
      @JsonKey(name: 'state_id') String? stateId,
      @JsonKey(name: 'district_id') String? districtId,
      @JsonKey(name: 'area_id') String? areaId,
      @JsonKey(name: 'experience_level_id') String? experienceLevelId,
      @JsonKey(name: 'salary_id') String? salaryId,
      String? description,
      @JsonKey(name: 'is_type_job') String? isTypeJob,
      String? status,
      @JsonKey(name: 'sort_order') String? sortOrder,
      @JsonKey(name: 'post_date') String? postDate,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'get_companies') Company? getCompanies,
      @JsonKey(name: 'get_categories') Category? getCategories,
      @JsonKey(name: 'get_job_types') JobType? getJobTypes,
      @JsonKey(name: 'get_experience_levels')
      ExperienceLevel? getExperienceLevels});

  $CompanyCopyWith<$Res>? get getCompanies;
  $CategoryCopyWith<$Res>? get getCategories;
  $JobTypeCopyWith<$Res>? get getJobTypes;
  $ExperienceLevelCopyWith<$Res>? get getExperienceLevels;
}

/// @nodoc
class _$JobDetailsModelCopyWithImpl<$Res, $Val extends JobDetailsModel>
    implements $JobDetailsModelCopyWith<$Res> {
  _$JobDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = freezed,
    Object? categoryId = freezed,
    Object? jobTypeId = freezed,
    Object? countryId = freezed,
    Object? stateId = freezed,
    Object? districtId = freezed,
    Object? areaId = freezed,
    Object? experienceLevelId = freezed,
    Object? salaryId = freezed,
    Object? description = freezed,
    Object? isTypeJob = freezed,
    Object? status = freezed,
    Object? sortOrder = freezed,
    Object? postDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? getCompanies = freezed,
    Object? getCategories = freezed,
    Object? getJobTypes = freezed,
    Object? getExperienceLevels = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTypeId: freezed == jobTypeId
          ? _value.jobTypeId
          : jobTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceLevelId: freezed == experienceLevelId
          ? _value.experienceLevelId
          : experienceLevelId // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryId: freezed == salaryId
          ? _value.salaryId
          : salaryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isTypeJob: freezed == isTypeJob
          ? _value.isTypeJob
          : isTypeJob // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      getCompanies: freezed == getCompanies
          ? _value.getCompanies
          : getCompanies // ignore: cast_nullable_to_non_nullable
              as Company?,
      getCategories: freezed == getCategories
          ? _value.getCategories
          : getCategories // ignore: cast_nullable_to_non_nullable
              as Category?,
      getJobTypes: freezed == getJobTypes
          ? _value.getJobTypes
          : getJobTypes // ignore: cast_nullable_to_non_nullable
              as JobType?,
      getExperienceLevels: freezed == getExperienceLevels
          ? _value.getExperienceLevels
          : getExperienceLevels // ignore: cast_nullable_to_non_nullable
              as ExperienceLevel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get getCompanies {
    if (_value.getCompanies == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.getCompanies!, (value) {
      return _then(_value.copyWith(getCompanies: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get getCategories {
    if (_value.getCategories == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.getCategories!, (value) {
      return _then(_value.copyWith(getCategories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $JobTypeCopyWith<$Res>? get getJobTypes {
    if (_value.getJobTypes == null) {
      return null;
    }

    return $JobTypeCopyWith<$Res>(_value.getJobTypes!, (value) {
      return _then(_value.copyWith(getJobTypes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperienceLevelCopyWith<$Res>? get getExperienceLevels {
    if (_value.getExperienceLevels == null) {
      return null;
    }

    return $ExperienceLevelCopyWith<$Res>(_value.getExperienceLevels!, (value) {
      return _then(_value.copyWith(getExperienceLevels: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobDetailsModelImplCopyWith<$Res>
    implements $JobDetailsModelCopyWith<$Res> {
  factory _$$JobDetailsModelImplCopyWith(_$JobDetailsModelImpl value,
          $Res Function(_$JobDetailsModelImpl) then) =
      __$$JobDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'company_id') String? companyId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'job_type_id') String? jobTypeId,
      @JsonKey(name: 'country_id') String? countryId,
      @JsonKey(name: 'state_id') String? stateId,
      @JsonKey(name: 'district_id') String? districtId,
      @JsonKey(name: 'area_id') String? areaId,
      @JsonKey(name: 'experience_level_id') String? experienceLevelId,
      @JsonKey(name: 'salary_id') String? salaryId,
      String? description,
      @JsonKey(name: 'is_type_job') String? isTypeJob,
      String? status,
      @JsonKey(name: 'sort_order') String? sortOrder,
      @JsonKey(name: 'post_date') String? postDate,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'get_companies') Company? getCompanies,
      @JsonKey(name: 'get_categories') Category? getCategories,
      @JsonKey(name: 'get_job_types') JobType? getJobTypes,
      @JsonKey(name: 'get_experience_levels')
      ExperienceLevel? getExperienceLevels});

  @override
  $CompanyCopyWith<$Res>? get getCompanies;
  @override
  $CategoryCopyWith<$Res>? get getCategories;
  @override
  $JobTypeCopyWith<$Res>? get getJobTypes;
  @override
  $ExperienceLevelCopyWith<$Res>? get getExperienceLevels;
}

/// @nodoc
class __$$JobDetailsModelImplCopyWithImpl<$Res>
    extends _$JobDetailsModelCopyWithImpl<$Res, _$JobDetailsModelImpl>
    implements _$$JobDetailsModelImplCopyWith<$Res> {
  __$$JobDetailsModelImplCopyWithImpl(
      _$JobDetailsModelImpl _value, $Res Function(_$JobDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = freezed,
    Object? categoryId = freezed,
    Object? jobTypeId = freezed,
    Object? countryId = freezed,
    Object? stateId = freezed,
    Object? districtId = freezed,
    Object? areaId = freezed,
    Object? experienceLevelId = freezed,
    Object? salaryId = freezed,
    Object? description = freezed,
    Object? isTypeJob = freezed,
    Object? status = freezed,
    Object? sortOrder = freezed,
    Object? postDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? getCompanies = freezed,
    Object? getCategories = freezed,
    Object? getJobTypes = freezed,
    Object? getExperienceLevels = freezed,
  }) {
    return _then(_$JobDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTypeId: freezed == jobTypeId
          ? _value.jobTypeId
          : jobTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceLevelId: freezed == experienceLevelId
          ? _value.experienceLevelId
          : experienceLevelId // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryId: freezed == salaryId
          ? _value.salaryId
          : salaryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isTypeJob: freezed == isTypeJob
          ? _value.isTypeJob
          : isTypeJob // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      getCompanies: freezed == getCompanies
          ? _value.getCompanies
          : getCompanies // ignore: cast_nullable_to_non_nullable
              as Company?,
      getCategories: freezed == getCategories
          ? _value.getCategories
          : getCategories // ignore: cast_nullable_to_non_nullable
              as Category?,
      getJobTypes: freezed == getJobTypes
          ? _value.getJobTypes
          : getJobTypes // ignore: cast_nullable_to_non_nullable
              as JobType?,
      getExperienceLevels: freezed == getExperienceLevels
          ? _value.getExperienceLevels
          : getExperienceLevels // ignore: cast_nullable_to_non_nullable
              as ExperienceLevel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDetailsModelImpl implements _JobDetailsModel {
  const _$JobDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'company_id') this.companyId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'job_type_id') this.jobTypeId,
      @JsonKey(name: 'country_id') this.countryId,
      @JsonKey(name: 'state_id') this.stateId,
      @JsonKey(name: 'district_id') this.districtId,
      @JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'experience_level_id') this.experienceLevelId,
      @JsonKey(name: 'salary_id') this.salaryId,
      this.description,
      @JsonKey(name: 'is_type_job') this.isTypeJob,
      this.status,
      @JsonKey(name: 'sort_order') this.sortOrder,
      @JsonKey(name: 'post_date') this.postDate,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'get_companies') this.getCompanies,
      @JsonKey(name: 'get_categories') this.getCategories,
      @JsonKey(name: 'get_job_types') this.getJobTypes,
      @JsonKey(name: 'get_experience_levels') this.getExperienceLevels});

  factory _$JobDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'company_id')
  final String? companyId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'job_type_id')
  final String? jobTypeId;
  @override
  @JsonKey(name: 'country_id')
  final String? countryId;
  @override
  @JsonKey(name: 'state_id')
  final String? stateId;
  @override
  @JsonKey(name: 'district_id')
  final String? districtId;
  @override
  @JsonKey(name: 'area_id')
  final String? areaId;
  @override
  @JsonKey(name: 'experience_level_id')
  final String? experienceLevelId;
  @override
  @JsonKey(name: 'salary_id')
  final String? salaryId;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_type_job')
  final String? isTypeJob;
  @override
  final String? status;
  @override
  @JsonKey(name: 'sort_order')
  final String? sortOrder;
  @override
  @JsonKey(name: 'post_date')
  final String? postDate;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'get_companies')
  final Company? getCompanies;
  @override
  @JsonKey(name: 'get_categories')
  final Category? getCategories;
  @override
  @JsonKey(name: 'get_job_types')
  final JobType? getJobTypes;
  @override
  @JsonKey(name: 'get_experience_levels')
  final ExperienceLevel? getExperienceLevels;

  @override
  String toString() {
    return 'JobDetailsModel(id: $id, companyId: $companyId, categoryId: $categoryId, jobTypeId: $jobTypeId, countryId: $countryId, stateId: $stateId, districtId: $districtId, areaId: $areaId, experienceLevelId: $experienceLevelId, salaryId: $salaryId, description: $description, isTypeJob: $isTypeJob, status: $status, sortOrder: $sortOrder, postDate: $postDate, createdAt: $createdAt, updatedAt: $updatedAt, getCompanies: $getCompanies, getCategories: $getCategories, getJobTypes: $getJobTypes, getExperienceLevels: $getExperienceLevels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.jobTypeId, jobTypeId) ||
                other.jobTypeId == jobTypeId) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.experienceLevelId, experienceLevelId) ||
                other.experienceLevelId == experienceLevelId) &&
            (identical(other.salaryId, salaryId) ||
                other.salaryId == salaryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isTypeJob, isTypeJob) ||
                other.isTypeJob == isTypeJob) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.getCompanies, getCompanies) ||
                other.getCompanies == getCompanies) &&
            (identical(other.getCategories, getCategories) ||
                other.getCategories == getCategories) &&
            (identical(other.getJobTypes, getJobTypes) ||
                other.getJobTypes == getJobTypes) &&
            (identical(other.getExperienceLevels, getExperienceLevels) ||
                other.getExperienceLevels == getExperienceLevels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        companyId,
        categoryId,
        jobTypeId,
        countryId,
        stateId,
        districtId,
        areaId,
        experienceLevelId,
        salaryId,
        description,
        isTypeJob,
        status,
        sortOrder,
        postDate,
        createdAt,
        updatedAt,
        getCompanies,
        getCategories,
        getJobTypes,
        getExperienceLevels
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsModelImplCopyWith<_$JobDetailsModelImpl> get copyWith =>
      __$$JobDetailsModelImplCopyWithImpl<_$JobDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _JobDetailsModel implements JobDetailsModel {
  const factory _JobDetailsModel(
      {required final int id,
      @JsonKey(name: 'company_id') final String? companyId,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'job_type_id') final String? jobTypeId,
      @JsonKey(name: 'country_id') final String? countryId,
      @JsonKey(name: 'state_id') final String? stateId,
      @JsonKey(name: 'district_id') final String? districtId,
      @JsonKey(name: 'area_id') final String? areaId,
      @JsonKey(name: 'experience_level_id') final String? experienceLevelId,
      @JsonKey(name: 'salary_id') final String? salaryId,
      final String? description,
      @JsonKey(name: 'is_type_job') final String? isTypeJob,
      final String? status,
      @JsonKey(name: 'sort_order') final String? sortOrder,
      @JsonKey(name: 'post_date') final String? postDate,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'get_companies') final Company? getCompanies,
      @JsonKey(name: 'get_categories') final Category? getCategories,
      @JsonKey(name: 'get_job_types') final JobType? getJobTypes,
      @JsonKey(name: 'get_experience_levels')
      final ExperienceLevel? getExperienceLevels}) = _$JobDetailsModelImpl;

  factory _JobDetailsModel.fromJson(Map<String, dynamic> json) =
      _$JobDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'company_id')
  String? get companyId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'job_type_id')
  String? get jobTypeId;
  @override
  @JsonKey(name: 'country_id')
  String? get countryId;
  @override
  @JsonKey(name: 'state_id')
  String? get stateId;
  @override
  @JsonKey(name: 'district_id')
  String? get districtId;
  @override
  @JsonKey(name: 'area_id')
  String? get areaId;
  @override
  @JsonKey(name: 'experience_level_id')
  String? get experienceLevelId;
  @override
  @JsonKey(name: 'salary_id')
  String? get salaryId;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_type_job')
  String? get isTypeJob;
  @override
  String? get status;
  @override
  @JsonKey(name: 'sort_order')
  String? get sortOrder;
  @override
  @JsonKey(name: 'post_date')
  String? get postDate;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'get_companies')
  Company? get getCompanies;
  @override
  @JsonKey(name: 'get_categories')
  Category? get getCategories;
  @override
  @JsonKey(name: 'get_job_types')
  JobType? get getJobTypes;
  @override
  @JsonKey(name: 'get_experience_levels')
  ExperienceLevel? get getExperienceLevels;
  @override
  @JsonKey(ignore: true)
  _$$JobDetailsModelImplCopyWith<_$JobDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_image')
  String? get companyImage => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'company_image') String? companyImage,
      String? description,
      String? address});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? address = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'company_image') String? companyImage,
      String? description,
      String? address});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? companyImage = freezed,
    Object? description = freezed,
    Object? address = freezed,
  }) {
    return _then(_$CompanyImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {this.id,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'company_image') this.companyImage,
      this.description,
      this.address});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'company_image')
  final String? companyImage;
  @override
  final String? description;
  @override
  final String? address;

  @override
  String toString() {
    return 'Company(id: $id, companyName: $companyName, companyImage: $companyImage, description: $description, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyImage, companyImage) ||
                other.companyImage == companyImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, companyName, companyImage, description, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {final int? id,
      @JsonKey(name: 'company_name') final String? companyName,
      @JsonKey(name: 'company_image') final String? companyImage,
      final String? description,
      final String? address}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'company_image')
  String? get companyImage;
  @override
  String? get description;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({int? id, @JsonKey(name: 'category_name') String? categoryName});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, @JsonKey(name: 'category_name') String? categoryName});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {this.id, @JsonKey(name: 'category_name') this.categoryName});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;

  @override
  String toString() {
    return 'Category(id: $id, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
          {final int? id,
          @JsonKey(name: 'category_name') final String? categoryName}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobType _$JobTypeFromJson(Map<String, dynamic> json) {
  return _JobType.fromJson(json);
}

/// @nodoc
mixin _$JobType {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_name')
  String? get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTypeCopyWith<JobType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTypeCopyWith<$Res> {
  factory $JobTypeCopyWith(JobType value, $Res Function(JobType) then) =
      _$JobTypeCopyWithImpl<$Res, JobType>;
  @useResult
  $Res call({int? id, @JsonKey(name: 'type_name') String? typeName});
}

/// @nodoc
class _$JobTypeCopyWithImpl<$Res, $Val extends JobType>
    implements $JobTypeCopyWith<$Res> {
  _$JobTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobTypeImplCopyWith<$Res> implements $JobTypeCopyWith<$Res> {
  factory _$$JobTypeImplCopyWith(
          _$JobTypeImpl value, $Res Function(_$JobTypeImpl) then) =
      __$$JobTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, @JsonKey(name: 'type_name') String? typeName});
}

/// @nodoc
class __$$JobTypeImplCopyWithImpl<$Res>
    extends _$JobTypeCopyWithImpl<$Res, _$JobTypeImpl>
    implements _$$JobTypeImplCopyWith<$Res> {
  __$$JobTypeImplCopyWithImpl(
      _$JobTypeImpl _value, $Res Function(_$JobTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_$JobTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobTypeImpl implements _JobType {
  const _$JobTypeImpl({this.id, @JsonKey(name: 'type_name') this.typeName});

  factory _$JobTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobTypeImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'type_name')
  final String? typeName;

  @override
  String toString() {
    return 'JobType(id: $id, typeName: $typeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, typeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobTypeImplCopyWith<_$JobTypeImpl> get copyWith =>
      __$$JobTypeImplCopyWithImpl<_$JobTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobTypeImplToJson(
      this,
    );
  }
}

abstract class _JobType implements JobType {
  const factory _JobType(
      {final int? id,
      @JsonKey(name: 'type_name') final String? typeName}) = _$JobTypeImpl;

  factory _JobType.fromJson(Map<String, dynamic> json) = _$JobTypeImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'type_name')
  String? get typeName;
  @override
  @JsonKey(ignore: true)
  _$$JobTypeImplCopyWith<_$JobTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExperienceLevel _$ExperienceLevelFromJson(Map<String, dynamic> json) {
  return _ExperienceLevel.fromJson(json);
}

/// @nodoc
mixin _$ExperienceLevel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_level_name')
  String? get experienceLevelName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperienceLevelCopyWith<ExperienceLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceLevelCopyWith<$Res> {
  factory $ExperienceLevelCopyWith(
          ExperienceLevel value, $Res Function(ExperienceLevel) then) =
      _$ExperienceLevelCopyWithImpl<$Res, ExperienceLevel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'experience_level_name') String? experienceLevelName});
}

/// @nodoc
class _$ExperienceLevelCopyWithImpl<$Res, $Val extends ExperienceLevel>
    implements $ExperienceLevelCopyWith<$Res> {
  _$ExperienceLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? experienceLevelName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceLevelName: freezed == experienceLevelName
          ? _value.experienceLevelName
          : experienceLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceLevelImplCopyWith<$Res>
    implements $ExperienceLevelCopyWith<$Res> {
  factory _$$ExperienceLevelImplCopyWith(_$ExperienceLevelImpl value,
          $Res Function(_$ExperienceLevelImpl) then) =
      __$$ExperienceLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'experience_level_name') String? experienceLevelName});
}

/// @nodoc
class __$$ExperienceLevelImplCopyWithImpl<$Res>
    extends _$ExperienceLevelCopyWithImpl<$Res, _$ExperienceLevelImpl>
    implements _$$ExperienceLevelImplCopyWith<$Res> {
  __$$ExperienceLevelImplCopyWithImpl(
      _$ExperienceLevelImpl _value, $Res Function(_$ExperienceLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? experienceLevelName = freezed,
  }) {
    return _then(_$ExperienceLevelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceLevelName: freezed == experienceLevelName
          ? _value.experienceLevelName
          : experienceLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceLevelImpl implements _ExperienceLevel {
  const _$ExperienceLevelImpl(
      {this.id,
      @JsonKey(name: 'experience_level_name') this.experienceLevelName});

  factory _$ExperienceLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceLevelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'experience_level_name')
  final String? experienceLevelName;

  @override
  String toString() {
    return 'ExperienceLevel(id: $id, experienceLevelName: $experienceLevelName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceLevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.experienceLevelName, experienceLevelName) ||
                other.experienceLevelName == experienceLevelName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, experienceLevelName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceLevelImplCopyWith<_$ExperienceLevelImpl> get copyWith =>
      __$$ExperienceLevelImplCopyWithImpl<_$ExperienceLevelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceLevelImplToJson(
      this,
    );
  }
}

abstract class _ExperienceLevel implements ExperienceLevel {
  const factory _ExperienceLevel(
      {final int? id,
      @JsonKey(name: 'experience_level_name')
      final String? experienceLevelName}) = _$ExperienceLevelImpl;

  factory _ExperienceLevel.fromJson(Map<String, dynamic> json) =
      _$ExperienceLevelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'experience_level_name')
  String? get experienceLevelName;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceLevelImplCopyWith<_$ExperienceLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
