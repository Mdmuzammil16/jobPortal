// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_marks_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookMarksResponseModel _$BookMarksResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BookMarksResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BookMarksResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BookMarksDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMarksResponseModelCopyWith<BookMarksResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarksResponseModelCopyWith<$Res> {
  factory $BookMarksResponseModelCopyWith(BookMarksResponseModel value,
          $Res Function(BookMarksResponseModel) then) =
      _$BookMarksResponseModelCopyWithImpl<$Res, BookMarksResponseModel>;
  @useResult
  $Res call({bool? success, String? message, BookMarksDataModel? data});

  $BookMarksDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookMarksResponseModelCopyWithImpl<$Res,
        $Val extends BookMarksResponseModel>
    implements $BookMarksResponseModelCopyWith<$Res> {
  _$BookMarksResponseModelCopyWithImpl(this._value, this._then);

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
              as BookMarksDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookMarksDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookMarksDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookMarksResponseModelImplCopyWith<$Res>
    implements $BookMarksResponseModelCopyWith<$Res> {
  factory _$$BookMarksResponseModelImplCopyWith(
          _$BookMarksResponseModelImpl value,
          $Res Function(_$BookMarksResponseModelImpl) then) =
      __$$BookMarksResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, BookMarksDataModel? data});

  @override
  $BookMarksDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BookMarksResponseModelImplCopyWithImpl<$Res>
    extends _$BookMarksResponseModelCopyWithImpl<$Res,
        _$BookMarksResponseModelImpl>
    implements _$$BookMarksResponseModelImplCopyWith<$Res> {
  __$$BookMarksResponseModelImplCopyWithImpl(
      _$BookMarksResponseModelImpl _value,
      $Res Function(_$BookMarksResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BookMarksResponseModelImpl(
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
              as BookMarksDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookMarksResponseModelImpl implements _BookMarksResponseModel {
  const _$BookMarksResponseModelImpl({this.success, this.message, this.data});

  factory _$BookMarksResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookMarksResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BookMarksDataModel? data;

  @override
  String toString() {
    return 'BookMarksResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarksResponseModelImpl &&
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
  _$$BookMarksResponseModelImplCopyWith<_$BookMarksResponseModelImpl>
      get copyWith => __$$BookMarksResponseModelImplCopyWithImpl<
          _$BookMarksResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookMarksResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BookMarksResponseModel implements BookMarksResponseModel {
  const factory _BookMarksResponseModel(
      {final bool? success,
      final String? message,
      final BookMarksDataModel? data}) = _$BookMarksResponseModelImpl;

  factory _BookMarksResponseModel.fromJson(Map<String, dynamic> json) =
      _$BookMarksResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  BookMarksDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BookMarksResponseModelImplCopyWith<_$BookMarksResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookMarksDataModel _$BookMarksDataModelFromJson(Map<String, dynamic> json) {
  return _BookMarksDataModel.fromJson(json);
}

/// @nodoc
mixin _$BookMarksDataModel {
  List<BookMarksModel>? get bookmarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMarksDataModelCopyWith<BookMarksDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarksDataModelCopyWith<$Res> {
  factory $BookMarksDataModelCopyWith(
          BookMarksDataModel value, $Res Function(BookMarksDataModel) then) =
      _$BookMarksDataModelCopyWithImpl<$Res, BookMarksDataModel>;
  @useResult
  $Res call({List<BookMarksModel>? bookmarks});
}

/// @nodoc
class _$BookMarksDataModelCopyWithImpl<$Res, $Val extends BookMarksDataModel>
    implements $BookMarksDataModelCopyWith<$Res> {
  _$BookMarksDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = freezed,
  }) {
    return _then(_value.copyWith(
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<BookMarksModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookMarksDataModelImplCopyWith<$Res>
    implements $BookMarksDataModelCopyWith<$Res> {
  factory _$$BookMarksDataModelImplCopyWith(_$BookMarksDataModelImpl value,
          $Res Function(_$BookMarksDataModelImpl) then) =
      __$$BookMarksDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookMarksModel>? bookmarks});
}

/// @nodoc
class __$$BookMarksDataModelImplCopyWithImpl<$Res>
    extends _$BookMarksDataModelCopyWithImpl<$Res, _$BookMarksDataModelImpl>
    implements _$$BookMarksDataModelImplCopyWith<$Res> {
  __$$BookMarksDataModelImplCopyWithImpl(_$BookMarksDataModelImpl _value,
      $Res Function(_$BookMarksDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = freezed,
  }) {
    return _then(_$BookMarksDataModelImpl(
      bookmarks: freezed == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<BookMarksModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookMarksDataModelImpl implements _BookMarksDataModel {
  const _$BookMarksDataModelImpl({final List<BookMarksModel>? bookmarks})
      : _bookmarks = bookmarks;

  factory _$BookMarksDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookMarksDataModelImplFromJson(json);

  final List<BookMarksModel>? _bookmarks;
  @override
  List<BookMarksModel>? get bookmarks {
    final value = _bookmarks;
    if (value == null) return null;
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookMarksDataModel(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarksDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmarks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMarksDataModelImplCopyWith<_$BookMarksDataModelImpl> get copyWith =>
      __$$BookMarksDataModelImplCopyWithImpl<_$BookMarksDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookMarksDataModelImplToJson(
      this,
    );
  }
}

abstract class _BookMarksDataModel implements BookMarksDataModel {
  const factory _BookMarksDataModel({final List<BookMarksModel>? bookmarks}) =
      _$BookMarksDataModelImpl;

  factory _BookMarksDataModel.fromJson(Map<String, dynamic> json) =
      _$BookMarksDataModelImpl.fromJson;

  @override
  List<BookMarksModel>? get bookmarks;
  @override
  @JsonKey(ignore: true)
  _$$BookMarksDataModelImplCopyWith<_$BookMarksDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookMarksModel _$BookMarksModelFromJson(Map<String, dynamic> json) {
  return _BookMarksModel.fromJson(json);
}

/// @nodoc
mixin _$BookMarksModel {
  @JsonKey(name: 'job_id')
  int get jobId => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_types')
  List<JobTypeModel> get jobTypes => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_level')
  String get experienceLevel => throw _privateConstructorUsedError;
  String get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_month')
  String get salaryMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_year')
  String get salaryYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_date')
  String get postDate => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMarksModelCopyWith<BookMarksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarksModelCopyWith<$Res> {
  factory $BookMarksModelCopyWith(
          BookMarksModel value, $Res Function(BookMarksModel) then) =
      _$BookMarksModelCopyWithImpl<$Res, BookMarksModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_id') int jobId,
      CompanyModel? company,
      @JsonKey(name: 'job_types') List<JobTypeModel> jobTypes,
      String category,
      @JsonKey(name: 'experience_level') String experienceLevel,
      String salary,
      @JsonKey(name: 'salary_month') String salaryMonth,
      @JsonKey(name: 'salary_year') String salaryYear,
      @JsonKey(name: 'post_date') String postDate,
      String? rating});

  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$BookMarksModelCopyWithImpl<$Res, $Val extends BookMarksModel>
    implements $BookMarksModelCopyWith<$Res> {
  _$BookMarksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? company = freezed,
    Object? jobTypes = null,
    Object? category = null,
    Object? experienceLevel = null,
    Object? salary = null,
    Object? salaryMonth = null,
    Object? salaryYear = null,
    Object? postDate = null,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      jobTypes: null == jobTypes
          ? _value.jobTypes
          : jobTypes // ignore: cast_nullable_to_non_nullable
              as List<JobTypeModel>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      experienceLevel: null == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String,
      salaryMonth: null == salaryMonth
          ? _value.salaryMonth
          : salaryMonth // ignore: cast_nullable_to_non_nullable
              as String,
      salaryYear: null == salaryYear
          ? _value.salaryYear
          : salaryYear // ignore: cast_nullable_to_non_nullable
              as String,
      postDate: null == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookMarksModelImplCopyWith<$Res>
    implements $BookMarksModelCopyWith<$Res> {
  factory _$$BookMarksModelImplCopyWith(_$BookMarksModelImpl value,
          $Res Function(_$BookMarksModelImpl) then) =
      __$$BookMarksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_id') int jobId,
      CompanyModel? company,
      @JsonKey(name: 'job_types') List<JobTypeModel> jobTypes,
      String category,
      @JsonKey(name: 'experience_level') String experienceLevel,
      String salary,
      @JsonKey(name: 'salary_month') String salaryMonth,
      @JsonKey(name: 'salary_year') String salaryYear,
      @JsonKey(name: 'post_date') String postDate,
      String? rating});

  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$BookMarksModelImplCopyWithImpl<$Res>
    extends _$BookMarksModelCopyWithImpl<$Res, _$BookMarksModelImpl>
    implements _$$BookMarksModelImplCopyWith<$Res> {
  __$$BookMarksModelImplCopyWithImpl(
      _$BookMarksModelImpl _value, $Res Function(_$BookMarksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? company = freezed,
    Object? jobTypes = null,
    Object? category = null,
    Object? experienceLevel = null,
    Object? salary = null,
    Object? salaryMonth = null,
    Object? salaryYear = null,
    Object? postDate = null,
    Object? rating = freezed,
  }) {
    return _then(_$BookMarksModelImpl(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      jobTypes: null == jobTypes
          ? _value._jobTypes
          : jobTypes // ignore: cast_nullable_to_non_nullable
              as List<JobTypeModel>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      experienceLevel: null == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String,
      salaryMonth: null == salaryMonth
          ? _value.salaryMonth
          : salaryMonth // ignore: cast_nullable_to_non_nullable
              as String,
      salaryYear: null == salaryYear
          ? _value.salaryYear
          : salaryYear // ignore: cast_nullable_to_non_nullable
              as String,
      postDate: null == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookMarksModelImpl implements _BookMarksModel {
  const _$BookMarksModelImpl(
      {@JsonKey(name: 'job_id') required this.jobId,
      required this.company,
      @JsonKey(name: 'job_types') required final List<JobTypeModel> jobTypes,
      required this.category,
      @JsonKey(name: 'experience_level') required this.experienceLevel,
      required this.salary,
      @JsonKey(name: 'salary_month') required this.salaryMonth,
      @JsonKey(name: 'salary_year') required this.salaryYear,
      @JsonKey(name: 'post_date') required this.postDate,
      this.rating})
      : _jobTypes = jobTypes;

  factory _$BookMarksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookMarksModelImplFromJson(json);

  @override
  @JsonKey(name: 'job_id')
  final int jobId;
  @override
  final CompanyModel? company;
  final List<JobTypeModel> _jobTypes;
  @override
  @JsonKey(name: 'job_types')
  List<JobTypeModel> get jobTypes {
    if (_jobTypes is EqualUnmodifiableListView) return _jobTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobTypes);
  }

  @override
  final String category;
  @override
  @JsonKey(name: 'experience_level')
  final String experienceLevel;
  @override
  final String salary;
  @override
  @JsonKey(name: 'salary_month')
  final String salaryMonth;
  @override
  @JsonKey(name: 'salary_year')
  final String salaryYear;
  @override
  @JsonKey(name: 'post_date')
  final String postDate;
  @override
  final String? rating;

  @override
  String toString() {
    return 'BookMarksModel(jobId: $jobId, company: $company, jobTypes: $jobTypes, category: $category, experienceLevel: $experienceLevel, salary: $salary, salaryMonth: $salaryMonth, salaryYear: $salaryYear, postDate: $postDate, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarksModelImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.company, company) || other.company == company) &&
            const DeepCollectionEquality().equals(other._jobTypes, _jobTypes) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.experienceLevel, experienceLevel) ||
                other.experienceLevel == experienceLevel) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.salaryMonth, salaryMonth) ||
                other.salaryMonth == salaryMonth) &&
            (identical(other.salaryYear, salaryYear) ||
                other.salaryYear == salaryYear) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobId,
      company,
      const DeepCollectionEquality().hash(_jobTypes),
      category,
      experienceLevel,
      salary,
      salaryMonth,
      salaryYear,
      postDate,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMarksModelImplCopyWith<_$BookMarksModelImpl> get copyWith =>
      __$$BookMarksModelImplCopyWithImpl<_$BookMarksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookMarksModelImplToJson(
      this,
    );
  }
}

abstract class _BookMarksModel implements BookMarksModel {
  const factory _BookMarksModel(
      {@JsonKey(name: 'job_id') required final int jobId,
      required final CompanyModel? company,
      @JsonKey(name: 'job_types') required final List<JobTypeModel> jobTypes,
      required final String category,
      @JsonKey(name: 'experience_level') required final String experienceLevel,
      required final String salary,
      @JsonKey(name: 'salary_month') required final String salaryMonth,
      @JsonKey(name: 'salary_year') required final String salaryYear,
      @JsonKey(name: 'post_date') required final String postDate,
      final String? rating}) = _$BookMarksModelImpl;

  factory _BookMarksModel.fromJson(Map<String, dynamic> json) =
      _$BookMarksModelImpl.fromJson;

  @override
  @JsonKey(name: 'job_id')
  int get jobId;
  @override
  CompanyModel? get company;
  @override
  @JsonKey(name: 'job_types')
  List<JobTypeModel> get jobTypes;
  @override
  String get category;
  @override
  @JsonKey(name: 'experience_level')
  String get experienceLevel;
  @override
  String get salary;
  @override
  @JsonKey(name: 'salary_month')
  String get salaryMonth;
  @override
  @JsonKey(name: 'salary_year')
  String get salaryYear;
  @override
  @JsonKey(name: 'post_date')
  String get postDate;
  @override
  String? get rating;
  @override
  @JsonKey(ignore: true)
  _$$BookMarksModelImplCopyWith<_$BookMarksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  @JsonKey(name: 'company_id')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_image')
  String get companyImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_id') int companyId,
      @JsonKey(name: 'company_name') String companyName,
      @JsonKey(name: 'company_image') String companyImage});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? companyName = null,
    Object? companyImage = null,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyImage: null == companyImage
          ? _value.companyImage
          : companyImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
          _$CompanyModelImpl value, $Res Function(_$CompanyModelImpl) then) =
      __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_id') int companyId,
      @JsonKey(name: 'company_name') String companyName,
      @JsonKey(name: 'company_image') String companyImage});
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
      _$CompanyModelImpl _value, $Res Function(_$CompanyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? companyName = null,
    Object? companyImage = null,
  }) {
    return _then(_$CompanyModelImpl(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyImage: null == companyImage
          ? _value.companyImage
          : companyImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyModelImpl implements _CompanyModel {
  const _$CompanyModelImpl(
      {@JsonKey(name: 'company_id') required this.companyId,
      @JsonKey(name: 'company_name') required this.companyName,
      @JsonKey(name: 'company_image') required this.companyImage});

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

  @override
  @JsonKey(name: 'company_id')
  final int companyId;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  @JsonKey(name: 'company_image')
  final String companyImage;

  @override
  String toString() {
    return 'CompanyModel(companyId: $companyId, companyName: $companyName, companyImage: $companyImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyModelImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyImage, companyImage) ||
                other.companyImage == companyImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyId, companyName, companyImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyModel implements CompanyModel {
  const factory _CompanyModel(
          {@JsonKey(name: 'company_id') required final int companyId,
          @JsonKey(name: 'company_name') required final String companyName,
          @JsonKey(name: 'company_image') required final String companyImage}) =
      _$CompanyModelImpl;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

  @override
  @JsonKey(name: 'company_id')
  int get companyId;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  @JsonKey(name: 'company_image')
  String get companyImage;
  @override
  @JsonKey(ignore: true)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobTypeModel _$JobTypeModelFromJson(Map<String, dynamic> json) {
  return _JobTypeModel.fromJson(json);
}

/// @nodoc
mixin _$JobTypeModel {
  @JsonKey(name: 'job_type_id')
  int get jobTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type')
  String get jobType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTypeModelCopyWith<JobTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTypeModelCopyWith<$Res> {
  factory $JobTypeModelCopyWith(
          JobTypeModel value, $Res Function(JobTypeModel) then) =
      _$JobTypeModelCopyWithImpl<$Res, JobTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_type_id') int jobTypeId,
      @JsonKey(name: 'job_type') String jobType});
}

/// @nodoc
class _$JobTypeModelCopyWithImpl<$Res, $Val extends JobTypeModel>
    implements $JobTypeModelCopyWith<$Res> {
  _$JobTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTypeId = null,
    Object? jobType = null,
  }) {
    return _then(_value.copyWith(
      jobTypeId: null == jobTypeId
          ? _value.jobTypeId
          : jobTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobTypeModelImplCopyWith<$Res>
    implements $JobTypeModelCopyWith<$Res> {
  factory _$$JobTypeModelImplCopyWith(
          _$JobTypeModelImpl value, $Res Function(_$JobTypeModelImpl) then) =
      __$$JobTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_type_id') int jobTypeId,
      @JsonKey(name: 'job_type') String jobType});
}

/// @nodoc
class __$$JobTypeModelImplCopyWithImpl<$Res>
    extends _$JobTypeModelCopyWithImpl<$Res, _$JobTypeModelImpl>
    implements _$$JobTypeModelImplCopyWith<$Res> {
  __$$JobTypeModelImplCopyWithImpl(
      _$JobTypeModelImpl _value, $Res Function(_$JobTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTypeId = null,
    Object? jobType = null,
  }) {
    return _then(_$JobTypeModelImpl(
      jobTypeId: null == jobTypeId
          ? _value.jobTypeId
          : jobTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobTypeModelImpl implements _JobTypeModel {
  const _$JobTypeModelImpl(
      {@JsonKey(name: 'job_type_id') required this.jobTypeId,
      @JsonKey(name: 'job_type') required this.jobType});

  factory _$JobTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'job_type_id')
  final int jobTypeId;
  @override
  @JsonKey(name: 'job_type')
  final String jobType;

  @override
  String toString() {
    return 'JobTypeModel(jobTypeId: $jobTypeId, jobType: $jobType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobTypeModelImpl &&
            (identical(other.jobTypeId, jobTypeId) ||
                other.jobTypeId == jobTypeId) &&
            (identical(other.jobType, jobType) || other.jobType == jobType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jobTypeId, jobType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobTypeModelImplCopyWith<_$JobTypeModelImpl> get copyWith =>
      __$$JobTypeModelImplCopyWithImpl<_$JobTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobTypeModelImplToJson(
      this,
    );
  }
}

abstract class _JobTypeModel implements JobTypeModel {
  const factory _JobTypeModel(
          {@JsonKey(name: 'job_type_id') required final int jobTypeId,
          @JsonKey(name: 'job_type') required final String jobType}) =
      _$JobTypeModelImpl;

  factory _JobTypeModel.fromJson(Map<String, dynamic> json) =
      _$JobTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'job_type_id')
  int get jobTypeId;
  @override
  @JsonKey(name: 'job_type')
  String get jobType;
  @override
  @JsonKey(ignore: true)
  _$$JobTypeModelImplCopyWith<_$JobTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
