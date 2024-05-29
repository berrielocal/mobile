// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_modify_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModifyRequest _$ProductModifyRequestFromJson(Map<String, dynamic> json) {
  return _ProductModifyRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductModifyRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;
  int? get maxSize => throw _privateConstructorUsedError;
  int? get minSize => throw _privateConstructorUsedError;
  String? get units => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModifyRequestCopyWith<ProductModifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModifyRequestCopyWith<$Res> {
  factory $ProductModifyRequestCopyWith(ProductModifyRequest value,
          $Res Function(ProductModifyRequest) then) =
      _$ProductModifyRequestCopyWithImpl<$Res, ProductModifyRequest>;
  @useResult
  $Res call(
      {String? name,
      String? imageUrl,
      double? cost,
      int? maxSize,
      int? minSize,
      String? units,
      List<String>? categories});
}

/// @nodoc
class _$ProductModifyRequestCopyWithImpl<$Res,
        $Val extends ProductModifyRequest>
    implements $ProductModifyRequestCopyWith<$Res> {
  _$ProductModifyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? cost = freezed,
    Object? maxSize = freezed,
    Object? minSize = freezed,
    Object? units = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      minSize: freezed == minSize
          ? _value.minSize
          : minSize // ignore: cast_nullable_to_non_nullable
              as int?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModifyRequestImplCopyWith<$Res>
    implements $ProductModifyRequestCopyWith<$Res> {
  factory _$$ProductModifyRequestImplCopyWith(_$ProductModifyRequestImpl value,
          $Res Function(_$ProductModifyRequestImpl) then) =
      __$$ProductModifyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? imageUrl,
      double? cost,
      int? maxSize,
      int? minSize,
      String? units,
      List<String>? categories});
}

/// @nodoc
class __$$ProductModifyRequestImplCopyWithImpl<$Res>
    extends _$ProductModifyRequestCopyWithImpl<$Res, _$ProductModifyRequestImpl>
    implements _$$ProductModifyRequestImplCopyWith<$Res> {
  __$$ProductModifyRequestImplCopyWithImpl(_$ProductModifyRequestImpl _value,
      $Res Function(_$ProductModifyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? cost = freezed,
    Object? maxSize = freezed,
    Object? minSize = freezed,
    Object? units = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$ProductModifyRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      minSize: freezed == minSize
          ? _value.minSize
          : minSize // ignore: cast_nullable_to_non_nullable
              as int?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ProductModifyRequestImpl implements _ProductModifyRequest {
  const _$ProductModifyRequestImpl(
      {this.name,
      this.imageUrl,
      this.cost,
      this.maxSize,
      this.minSize,
      this.units,
      final List<String>? categories})
      : _categories = categories;

  factory _$ProductModifyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModifyRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final double? cost;
  @override
  final int? maxSize;
  @override
  final int? minSize;
  @override
  final String? units;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductModifyRequest(name: $name, imageUrl: $imageUrl, cost: $cost, maxSize: $maxSize, minSize: $minSize, units: $units, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModifyRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.minSize, minSize) || other.minSize == minSize) &&
            (identical(other.units, units) || other.units == units) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl, cost, maxSize,
      minSize, units, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModifyRequestImplCopyWith<_$ProductModifyRequestImpl>
      get copyWith =>
          __$$ProductModifyRequestImplCopyWithImpl<_$ProductModifyRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModifyRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductModifyRequest implements ProductModifyRequest {
  const factory _ProductModifyRequest(
      {final String? name,
      final String? imageUrl,
      final double? cost,
      final int? maxSize,
      final int? minSize,
      final String? units,
      final List<String>? categories}) = _$ProductModifyRequestImpl;

  factory _ProductModifyRequest.fromJson(Map<String, dynamic> json) =
      _$ProductModifyRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  double? get cost;
  @override
  int? get maxSize;
  @override
  int? get minSize;
  @override
  String? get units;
  @override
  List<String>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$ProductModifyRequestImplCopyWith<_$ProductModifyRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
