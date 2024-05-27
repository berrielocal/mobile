// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_all_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopAllInfoResponse _$ShopAllInfoResponseFromJson(Map<String, dynamic> json) {
  return _ShopAllInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$ShopAllInfoResponse {
  String? get shopId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get matchLevel => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopAllInfoResponseCopyWith<ShopAllInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopAllInfoResponseCopyWith<$Res> {
  factory $ShopAllInfoResponseCopyWith(
          ShopAllInfoResponse value, $Res Function(ShopAllInfoResponse) then) =
      _$ShopAllInfoResponseCopyWithImpl<$Res, ShopAllInfoResponse>;
  @useResult
  $Res call(
      {String? shopId,
      String? name,
      String? imageUrl,
      double? matchLevel,
      List<String>? categories});
}

/// @nodoc
class _$ShopAllInfoResponseCopyWithImpl<$Res, $Val extends ShopAllInfoResponse>
    implements $ShopAllInfoResponseCopyWith<$Res> {
  _$ShopAllInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? matchLevel = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      matchLevel: freezed == matchLevel
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopAllInfoResponseImplCopyWith<$Res>
    implements $ShopAllInfoResponseCopyWith<$Res> {
  factory _$$ShopAllInfoResponseImplCopyWith(_$ShopAllInfoResponseImpl value,
          $Res Function(_$ShopAllInfoResponseImpl) then) =
      __$$ShopAllInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? shopId,
      String? name,
      String? imageUrl,
      double? matchLevel,
      List<String>? categories});
}

/// @nodoc
class __$$ShopAllInfoResponseImplCopyWithImpl<$Res>
    extends _$ShopAllInfoResponseCopyWithImpl<$Res, _$ShopAllInfoResponseImpl>
    implements _$$ShopAllInfoResponseImplCopyWith<$Res> {
  __$$ShopAllInfoResponseImplCopyWithImpl(_$ShopAllInfoResponseImpl _value,
      $Res Function(_$ShopAllInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? matchLevel = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$ShopAllInfoResponseImpl(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      matchLevel: freezed == matchLevel
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopAllInfoResponseImpl implements _ShopAllInfoResponse {
  const _$ShopAllInfoResponseImpl(
      {this.shopId,
      this.name,
      this.imageUrl,
      this.matchLevel,
      final List<String>? categories})
      : _categories = categories;

  factory _$ShopAllInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopAllInfoResponseImplFromJson(json);

  @override
  final String? shopId;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final double? matchLevel;
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
    return 'ShopAllInfoResponse(shopId: $shopId, name: $name, imageUrl: $imageUrl, matchLevel: $matchLevel, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopAllInfoResponseImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.matchLevel, matchLevel) ||
                other.matchLevel == matchLevel) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopId, name, imageUrl,
      matchLevel, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopAllInfoResponseImplCopyWith<_$ShopAllInfoResponseImpl> get copyWith =>
      __$$ShopAllInfoResponseImplCopyWithImpl<_$ShopAllInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopAllInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _ShopAllInfoResponse implements ShopAllInfoResponse {
  const factory _ShopAllInfoResponse(
      {final String? shopId,
      final String? name,
      final String? imageUrl,
      final double? matchLevel,
      final List<String>? categories}) = _$ShopAllInfoResponseImpl;

  factory _ShopAllInfoResponse.fromJson(Map<String, dynamic> json) =
      _$ShopAllInfoResponseImpl.fromJson;

  @override
  String? get shopId;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  double? get matchLevel;
  @override
  List<String>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$ShopAllInfoResponseImplCopyWith<_$ShopAllInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
