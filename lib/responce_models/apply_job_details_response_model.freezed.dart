// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_job_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyJobDetailsResponseModel _$ApplyJobDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ApplyJobDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ApplyJobDetailsResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ApplyJobDetailsModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyJobDetailsResponseModelCopyWith<ApplyJobDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyJobDetailsResponseModelCopyWith<$Res> {
  factory $ApplyJobDetailsResponseModelCopyWith(
          ApplyJobDetailsResponseModel value,
          $Res Function(ApplyJobDetailsResponseModel) then) =
      _$ApplyJobDetailsResponseModelCopyWithImpl<$Res,
          ApplyJobDetailsResponseModel>;
  @useResult
  $Res call({bool? success, String? message, ApplyJobDetailsModel? data});

  $ApplyJobDetailsModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ApplyJobDetailsResponseModelCopyWithImpl<$Res,
        $Val extends ApplyJobDetailsResponseModel>
    implements $ApplyJobDetailsResponseModelCopyWith<$Res> {
  _$ApplyJobDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as ApplyJobDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplyJobDetailsModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ApplyJobDetailsModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplyJobDetailsResponseModelImplCopyWith<$Res>
    implements $ApplyJobDetailsResponseModelCopyWith<$Res> {
  factory _$$ApplyJobDetailsResponseModelImplCopyWith(
          _$ApplyJobDetailsResponseModelImpl value,
          $Res Function(_$ApplyJobDetailsResponseModelImpl) then) =
      __$$ApplyJobDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, ApplyJobDetailsModel? data});

  @override
  $ApplyJobDetailsModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ApplyJobDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$ApplyJobDetailsResponseModelCopyWithImpl<$Res,
        _$ApplyJobDetailsResponseModelImpl>
    implements _$$ApplyJobDetailsResponseModelImplCopyWith<$Res> {
  __$$ApplyJobDetailsResponseModelImplCopyWithImpl(
      _$ApplyJobDetailsResponseModelImpl _value,
      $Res Function(_$ApplyJobDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ApplyJobDetailsResponseModelImpl(
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
              as ApplyJobDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyJobDetailsResponseModelImpl
    implements _ApplyJobDetailsResponseModel {
  const _$ApplyJobDetailsResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$ApplyJobDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApplyJobDetailsResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final ApplyJobDetailsModel? data;

  @override
  String toString() {
    return 'ApplyJobDetailsResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyJobDetailsResponseModelImpl &&
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
  _$$ApplyJobDetailsResponseModelImplCopyWith<
          _$ApplyJobDetailsResponseModelImpl>
      get copyWith => __$$ApplyJobDetailsResponseModelImplCopyWithImpl<
          _$ApplyJobDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyJobDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ApplyJobDetailsResponseModel
    implements ApplyJobDetailsResponseModel {
  const factory _ApplyJobDetailsResponseModel(
      {final bool? success,
      final String? message,
      final ApplyJobDetailsModel? data}) = _$ApplyJobDetailsResponseModelImpl;

  factory _ApplyJobDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ApplyJobDetailsResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  ApplyJobDetailsModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ApplyJobDetailsResponseModelImplCopyWith<
          _$ApplyJobDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApplyJobDetailsModel _$ApplyJobDetailsModelFromJson(Map<String, dynamic> json) {
  return _ApplyJobDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ApplyJobDetailsModel {
  @JsonKey(name: 'job-types')
  List<JobType>? get jobType => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  List<Country>? get countries => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_levels')
  List<ExperienceLevel>? get experienceLevels =>
      throw _privateConstructorUsedError;
  List<Salary>? get salaries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyJobDetailsModelCopyWith<ApplyJobDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyJobDetailsModelCopyWith<$Res> {
  factory $ApplyJobDetailsModelCopyWith(ApplyJobDetailsModel value,
          $Res Function(ApplyJobDetailsModel) then) =
      _$ApplyJobDetailsModelCopyWithImpl<$Res, ApplyJobDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job-types') List<JobType>? jobType,
      List<Category>? categories,
      List<Country>? countries,
      @JsonKey(name: 'experience_levels')
      List<ExperienceLevel>? experienceLevels,
      List<Salary>? salaries});
}

/// @nodoc
class _$ApplyJobDetailsModelCopyWithImpl<$Res,
        $Val extends ApplyJobDetailsModel>
    implements $ApplyJobDetailsModelCopyWith<$Res> {
  _$ApplyJobDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobType = freezed,
    Object? categories = freezed,
    Object? countries = freezed,
    Object? experienceLevels = freezed,
    Object? salaries = freezed,
  }) {
    return _then(_value.copyWith(
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as List<JobType>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      experienceLevels: freezed == experienceLevels
          ? _value.experienceLevels
          : experienceLevels // ignore: cast_nullable_to_non_nullable
              as List<ExperienceLevel>?,
      salaries: freezed == salaries
          ? _value.salaries
          : salaries // ignore: cast_nullable_to_non_nullable
              as List<Salary>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyJobDetailsModelImplCopyWith<$Res>
    implements $ApplyJobDetailsModelCopyWith<$Res> {
  factory _$$ApplyJobDetailsModelImplCopyWith(_$ApplyJobDetailsModelImpl value,
          $Res Function(_$ApplyJobDetailsModelImpl) then) =
      __$$ApplyJobDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job-types') List<JobType>? jobType,
      List<Category>? categories,
      List<Country>? countries,
      @JsonKey(name: 'experience_levels')
      List<ExperienceLevel>? experienceLevels,
      List<Salary>? salaries});
}

/// @nodoc
class __$$ApplyJobDetailsModelImplCopyWithImpl<$Res>
    extends _$ApplyJobDetailsModelCopyWithImpl<$Res, _$ApplyJobDetailsModelImpl>
    implements _$$ApplyJobDetailsModelImplCopyWith<$Res> {
  __$$ApplyJobDetailsModelImplCopyWithImpl(_$ApplyJobDetailsModelImpl _value,
      $Res Function(_$ApplyJobDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobType = freezed,
    Object? categories = freezed,
    Object? countries = freezed,
    Object? experienceLevels = freezed,
    Object? salaries = freezed,
  }) {
    return _then(_$ApplyJobDetailsModelImpl(
      jobType: freezed == jobType
          ? _value._jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as List<JobType>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      experienceLevels: freezed == experienceLevels
          ? _value._experienceLevels
          : experienceLevels // ignore: cast_nullable_to_non_nullable
              as List<ExperienceLevel>?,
      salaries: freezed == salaries
          ? _value._salaries
          : salaries // ignore: cast_nullable_to_non_nullable
              as List<Salary>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyJobDetailsModelImpl implements _ApplyJobDetailsModel {
  const _$ApplyJobDetailsModelImpl(
      {@JsonKey(name: 'job-types') final List<JobType>? jobType,
      final List<Category>? categories,
      final List<Country>? countries,
      @JsonKey(name: 'experience_levels')
      final List<ExperienceLevel>? experienceLevels,
      final List<Salary>? salaries})
      : _jobType = jobType,
        _categories = categories,
        _countries = countries,
        _experienceLevels = experienceLevels,
        _salaries = salaries;

  factory _$ApplyJobDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyJobDetailsModelImplFromJson(json);

  final List<JobType>? _jobType;
  @override
  @JsonKey(name: 'job-types')
  List<JobType>? get jobType {
    final value = _jobType;
    if (value == null) return null;
    if (_jobType is EqualUnmodifiableListView) return _jobType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Country>? _countries;
  @override
  List<Country>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExperienceLevel>? _experienceLevels;
  @override
  @JsonKey(name: 'experience_levels')
  List<ExperienceLevel>? get experienceLevels {
    final value = _experienceLevels;
    if (value == null) return null;
    if (_experienceLevels is EqualUnmodifiableListView)
      return _experienceLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Salary>? _salaries;
  @override
  List<Salary>? get salaries {
    final value = _salaries;
    if (value == null) return null;
    if (_salaries is EqualUnmodifiableListView) return _salaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApplyJobDetailsModel(jobType: $jobType, categories: $categories, countries: $countries, experienceLevels: $experienceLevels, salaries: $salaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyJobDetailsModelImpl &&
            const DeepCollectionEquality().equals(other._jobType, _jobType) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other._experienceLevels, _experienceLevels) &&
            const DeepCollectionEquality().equals(other._salaries, _salaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_jobType),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_experienceLevels),
      const DeepCollectionEquality().hash(_salaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyJobDetailsModelImplCopyWith<_$ApplyJobDetailsModelImpl>
      get copyWith =>
          __$$ApplyJobDetailsModelImplCopyWithImpl<_$ApplyJobDetailsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyJobDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ApplyJobDetailsModel implements ApplyJobDetailsModel {
  const factory _ApplyJobDetailsModel(
      {@JsonKey(name: 'job-types') final List<JobType>? jobType,
      final List<Category>? categories,
      final List<Country>? countries,
      @JsonKey(name: 'experience_levels')
      final List<ExperienceLevel>? experienceLevels,
      final List<Salary>? salaries}) = _$ApplyJobDetailsModelImpl;

  factory _ApplyJobDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ApplyJobDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'job-types')
  List<JobType>? get jobType;
  @override
  List<Category>? get categories;
  @override
  List<Country>? get countries;
  @override
  @JsonKey(name: 'experience_levels')
  List<ExperienceLevel>? get experienceLevels;
  @override
  List<Salary>? get salaries;
  @override
  @JsonKey(ignore: true)
  _$$ApplyJobDetailsModelImplCopyWith<_$ApplyJobDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_name')
  String? get countryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({int? id, @JsonKey(name: 'country_name') String? countryName});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, @JsonKey(name: 'country_name') String? countryName});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_$CountryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {this.id, @JsonKey(name: 'country_name') this.countryName});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'country_name')
  final String? countryName;

  @override
  String toString() {
    return 'Country(id: $id, countryName: $countryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country(
          {final int? id,
          @JsonKey(name: 'country_name') final String? countryName}) =
      _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'country_name')
  String? get countryName;
  @override
  @JsonKey(ignore: true)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Salary _$SalaryFromJson(Map<String, dynamic> json) {
  return _Salary.fromJson(json);
}

/// @nodoc
mixin _$Salary {
  int? get id => throw _privateConstructorUsedError;
  String? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_month')
  String? get salaryMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_year')
  String? get salaryYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalaryCopyWith<Salary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryCopyWith<$Res> {
  factory $SalaryCopyWith(Salary value, $Res Function(Salary) then) =
      _$SalaryCopyWithImpl<$Res, Salary>;
  @useResult
  $Res call(
      {int? id,
      String? salary,
      @JsonKey(name: 'salary_month') String? salaryMonth,
      @JsonKey(name: 'salary_year') String? salaryYear});
}

/// @nodoc
class _$SalaryCopyWithImpl<$Res, $Val extends Salary>
    implements $SalaryCopyWith<$Res> {
  _$SalaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salary = freezed,
    Object? salaryMonth = freezed,
    Object? salaryYear = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMonth: freezed == salaryMonth
          ? _value.salaryMonth
          : salaryMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryYear: freezed == salaryYear
          ? _value.salaryYear
          : salaryYear // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalaryImplCopyWith<$Res> implements $SalaryCopyWith<$Res> {
  factory _$$SalaryImplCopyWith(
          _$SalaryImpl value, $Res Function(_$SalaryImpl) then) =
      __$$SalaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? salary,
      @JsonKey(name: 'salary_month') String? salaryMonth,
      @JsonKey(name: 'salary_year') String? salaryYear});
}

/// @nodoc
class __$$SalaryImplCopyWithImpl<$Res>
    extends _$SalaryCopyWithImpl<$Res, _$SalaryImpl>
    implements _$$SalaryImplCopyWith<$Res> {
  __$$SalaryImplCopyWithImpl(
      _$SalaryImpl _value, $Res Function(_$SalaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salary = freezed,
    Object? salaryMonth = freezed,
    Object? salaryYear = freezed,
  }) {
    return _then(_$SalaryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryMonth: freezed == salaryMonth
          ? _value.salaryMonth
          : salaryMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryYear: freezed == salaryYear
          ? _value.salaryYear
          : salaryYear // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalaryImpl implements _Salary {
  const _$SalaryImpl(
      {this.id,
      this.salary,
      @JsonKey(name: 'salary_month') this.salaryMonth,
      @JsonKey(name: 'salary_year') this.salaryYear});

  factory _$SalaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalaryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? salary;
  @override
  @JsonKey(name: 'salary_month')
  final String? salaryMonth;
  @override
  @JsonKey(name: 'salary_year')
  final String? salaryYear;

  @override
  String toString() {
    return 'Salary(id: $id, salary: $salary, salaryMonth: $salaryMonth, salaryYear: $salaryYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.salaryMonth, salaryMonth) ||
                other.salaryMonth == salaryMonth) &&
            (identical(other.salaryYear, salaryYear) ||
                other.salaryYear == salaryYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, salary, salaryMonth, salaryYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalaryImplCopyWith<_$SalaryImpl> get copyWith =>
      __$$SalaryImplCopyWithImpl<_$SalaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalaryImplToJson(
      this,
    );
  }
}

abstract class _Salary implements Salary {
  const factory _Salary(
      {final int? id,
      final String? salary,
      @JsonKey(name: 'salary_month') final String? salaryMonth,
      @JsonKey(name: 'salary_year') final String? salaryYear}) = _$SalaryImpl;

  factory _Salary.fromJson(Map<String, dynamic> json) = _$SalaryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get salary;
  @override
  @JsonKey(name: 'salary_month')
  String? get salaryMonth;
  @override
  @JsonKey(name: 'salary_year')
  String? get salaryYear;
  @override
  @JsonKey(ignore: true)
  _$$SalaryImplCopyWith<_$SalaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
