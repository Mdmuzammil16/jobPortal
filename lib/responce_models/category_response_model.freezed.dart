// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResponseModel _$CategoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CategoryDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseModelCopyWith<CategoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseModelCopyWith<$Res> {
  factory $CategoryResponseModelCopyWith(CategoryResponseModel value,
          $Res Function(CategoryResponseModel) then) =
      _$CategoryResponseModelCopyWithImpl<$Res, CategoryResponseModel>;
  @useResult
  $Res call({bool? success, String? message, CategoryDataModel? data});

  $CategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryResponseModelCopyWithImpl<$Res,
        $Val extends CategoryResponseModel>
    implements $CategoryResponseModelCopyWith<$Res> {
  _$CategoryResponseModelCopyWithImpl(this._value, this._then);

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
              as CategoryDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CategoryDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryResponseModelImplCopyWith<$Res>
    implements $CategoryResponseModelCopyWith<$Res> {
  factory _$$CategoryResponseModelImplCopyWith(
          _$CategoryResponseModelImpl value,
          $Res Function(_$CategoryResponseModelImpl) then) =
      __$$CategoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, CategoryDataModel? data});

  @override
  $CategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoryResponseModelImplCopyWithImpl<$Res>
    extends _$CategoryResponseModelCopyWithImpl<$Res,
        _$CategoryResponseModelImpl>
    implements _$$CategoryResponseModelImplCopyWith<$Res> {
  __$$CategoryResponseModelImplCopyWithImpl(_$CategoryResponseModelImpl _value,
      $Res Function(_$CategoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CategoryResponseModelImpl(
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
              as CategoryDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseModelImpl implements _CategoryResponseModel {
  const _$CategoryResponseModelImpl({this.success, this.message, this.data});

  factory _$CategoryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final CategoryDataModel? data;

  @override
  String toString() {
    return 'CategoryResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseModelImpl &&
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
  _$$CategoryResponseModelImplCopyWith<_$CategoryResponseModelImpl>
      get copyWith => __$$CategoryResponseModelImplCopyWithImpl<
          _$CategoryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponseModel implements CategoryResponseModel {
  const factory _CategoryResponseModel(
      {final bool? success,
      final String? message,
      final CategoryDataModel? data}) = _$CategoryResponseModelImpl;

  factory _CategoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  CategoryDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryResponseModelImplCopyWith<_$CategoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryDataModel _$CategoryDataModelFromJson(Map<String, dynamic> json) {
  return _CategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDataModel {
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataModelCopyWith<CategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataModelCopyWith<$Res> {
  factory $CategoryDataModelCopyWith(
          CategoryDataModel value, $Res Function(CategoryDataModel) then) =
      _$CategoryDataModelCopyWithImpl<$Res, CategoryDataModel>;
  @useResult
  $Res call({List<CategoryModel>? categories});
}

/// @nodoc
class _$CategoryDataModelCopyWithImpl<$Res, $Val extends CategoryDataModel>
    implements $CategoryDataModelCopyWith<$Res> {
  _$CategoryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDataModelImplCopyWith<$Res>
    implements $CategoryDataModelCopyWith<$Res> {
  factory _$$CategoryDataModelImplCopyWith(_$CategoryDataModelImpl value,
          $Res Function(_$CategoryDataModelImpl) then) =
      __$$CategoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel>? categories});
}

/// @nodoc
class __$$CategoryDataModelImplCopyWithImpl<$Res>
    extends _$CategoryDataModelCopyWithImpl<$Res, _$CategoryDataModelImpl>
    implements _$$CategoryDataModelImplCopyWith<$Res> {
  __$$CategoryDataModelImplCopyWithImpl(_$CategoryDataModelImpl _value,
      $Res Function(_$CategoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$CategoryDataModelImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDataModelImpl implements _CategoryDataModel {
  const _$CategoryDataModelImpl({final List<CategoryModel>? categories})
      : _categories = categories;

  factory _$CategoryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDataModelImplFromJson(json);

  final List<CategoryModel>? _categories;
  @override
  List<CategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryDataModel(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataModelImplCopyWith<_$CategoryDataModelImpl> get copyWith =>
      __$$CategoryDataModelImplCopyWithImpl<_$CategoryDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryDataModel implements CategoryDataModel {
  const factory _CategoryDataModel({final List<CategoryModel>? categories}) =
      _$CategoryDataModelImpl;

  factory _CategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$CategoryDataModelImpl.fromJson;

  @override
  List<CategoryModel>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDataModelImplCopyWith<_$CategoryDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_image')
  String? get categoryImage => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  String? get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'jobs_count')
  String? get jobsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_openings')
  String? get totalOpenings => throw _privateConstructorUsedError;
  @JsonKey(name: 'openings_text')
  String? get openingsText => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_image') String? categoryImage,
      String? status,
      @JsonKey(name: 'sort_order') String? sortOrder,
      @JsonKey(name: 'jobs_count') String? jobsCount,
      @JsonKey(name: 'total_openings') String? totalOpenings,
      @JsonKey(name: 'openings_text') String? openingsText,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = freezed,
    Object? categoryImage = freezed,
    Object? status = freezed,
    Object? sortOrder = freezed,
    Object? jobsCount = freezed,
    Object? totalOpenings = freezed,
    Object? openingsText = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryImage: freezed == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      jobsCount: freezed == jobsCount
          ? _value.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalOpenings: freezed == totalOpenings
          ? _value.totalOpenings
          : totalOpenings // ignore: cast_nullable_to_non_nullable
              as String?,
      openingsText: freezed == openingsText
          ? _value.openingsText
          : openingsText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_image') String? categoryImage,
      String? status,
      @JsonKey(name: 'sort_order') String? sortOrder,
      @JsonKey(name: 'jobs_count') String? jobsCount,
      @JsonKey(name: 'total_openings') String? totalOpenings,
      @JsonKey(name: 'openings_text') String? openingsText,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = freezed,
    Object? categoryImage = freezed,
    Object? status = freezed,
    Object? sortOrder = freezed,
    Object? jobsCount = freezed,
    Object? totalOpenings = freezed,
    Object? openingsText = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryImage: freezed == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      jobsCount: freezed == jobsCount
          ? _value.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalOpenings: freezed == totalOpenings
          ? _value.totalOpenings
          : totalOpenings // ignore: cast_nullable_to_non_nullable
              as String?,
      openingsText: freezed == openingsText
          ? _value.openingsText
          : openingsText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {required this.id,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'category_image') this.categoryImage,
      this.status,
      @JsonKey(name: 'sort_order') this.sortOrder,
      @JsonKey(name: 'jobs_count') this.jobsCount,
      @JsonKey(name: 'total_openings') this.totalOpenings,
      @JsonKey(name: 'openings_text') this.openingsText,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'category_image')
  final String? categoryImage;
  @override
  final String? status;
  @override
  @JsonKey(name: 'sort_order')
  final String? sortOrder;
  @override
  @JsonKey(name: 'jobs_count')
  final String? jobsCount;
  @override
  @JsonKey(name: 'total_openings')
  final String? totalOpenings;
  @override
  @JsonKey(name: 'openings_text')
  final String? openingsText;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'CategoryModel(id: $id, categoryName: $categoryName, categoryImage: $categoryImage, status: $status, sortOrder: $sortOrder, jobsCount: $jobsCount, totalOpenings: $totalOpenings, openingsText: $openingsText, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryImage, categoryImage) ||
                other.categoryImage == categoryImage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.jobsCount, jobsCount) ||
                other.jobsCount == jobsCount) &&
            (identical(other.totalOpenings, totalOpenings) ||
                other.totalOpenings == totalOpenings) &&
            (identical(other.openingsText, openingsText) ||
                other.openingsText == openingsText) &&
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
      categoryName,
      categoryImage,
      status,
      sortOrder,
      jobsCount,
      totalOpenings,
      openingsText,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
          {required final int id,
          @JsonKey(name: 'category_name') final String? categoryName,
          @JsonKey(name: 'category_image') final String? categoryImage,
          final String? status,
          @JsonKey(name: 'sort_order') final String? sortOrder,
          @JsonKey(name: 'jobs_count') final String? jobsCount,
          @JsonKey(name: 'total_openings') final String? totalOpenings,
          @JsonKey(name: 'openings_text') final String? openingsText,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(name: 'category_image')
  String? get categoryImage;
  @override
  String? get status;
  @override
  @JsonKey(name: 'sort_order')
  String? get sortOrder;
  @override
  @JsonKey(name: 'jobs_count')
  String? get jobsCount;
  @override
  @JsonKey(name: 'total_openings')
  String? get totalOpenings;
  @override
  @JsonKey(name: 'openings_text')
  String? get openingsText;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
