// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopUpdateRequest _$ShopUpdateRequestFromJson(Map<String, dynamic> json) {
  return _ShopUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ShopUpdateRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopUpdateRequestCopyWith<ShopUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopUpdateRequestCopyWith<$Res> {
  factory $ShopUpdateRequestCopyWith(
          ShopUpdateRequest value, $Res Function(ShopUpdateRequest) then) =
      _$ShopUpdateRequestCopyWithImpl<$Res, ShopUpdateRequest>;
  @useResult
  $Res call(
      {String? name,
      String? imageUrl,
      String? email,
      String? phoneNumber,
      List<String>? categories});
}

/// @nodoc
class _$ShopUpdateRequestCopyWithImpl<$Res, $Val extends ShopUpdateRequest>
    implements $ShopUpdateRequestCopyWith<$Res> {
  _$ShopUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopUpdateRequestImplCopyWith<$Res>
    implements $ShopUpdateRequestCopyWith<$Res> {
  factory _$$ShopUpdateRequestImplCopyWith(_$ShopUpdateRequestImpl value,
          $Res Function(_$ShopUpdateRequestImpl) then) =
      __$$ShopUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? imageUrl,
      String? email,
      String? phoneNumber,
      List<String>? categories});
}

/// @nodoc
class __$$ShopUpdateRequestImplCopyWithImpl<$Res>
    extends _$ShopUpdateRequestCopyWithImpl<$Res, _$ShopUpdateRequestImpl>
    implements _$$ShopUpdateRequestImplCopyWith<$Res> {
  __$$ShopUpdateRequestImplCopyWithImpl(_$ShopUpdateRequestImpl _value,
      $Res Function(_$ShopUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$ShopUpdateRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
class _$ShopUpdateRequestImpl implements _ShopUpdateRequest {
  const _$ShopUpdateRequestImpl(
      {this.name,
      this.imageUrl,
      this.email,
      this.phoneNumber,
      final List<String>? categories})
      : _categories = categories;

  factory _$ShopUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopUpdateRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final String? email;
  @override
  final String? phoneNumber;
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
    return 'ShopUpdateRequest(name: $name, imageUrl: $imageUrl, email: $email, phoneNumber: $phoneNumber, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopUpdateRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl, email,
      phoneNumber, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopUpdateRequestImplCopyWith<_$ShopUpdateRequestImpl> get copyWith =>
      __$$ShopUpdateRequestImplCopyWithImpl<_$ShopUpdateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _ShopUpdateRequest implements ShopUpdateRequest {
  const factory _ShopUpdateRequest(
      {final String? name,
      final String? imageUrl,
      final String? email,
      final String? phoneNumber,
      final List<String>? categories}) = _$ShopUpdateRequestImpl;

  factory _ShopUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$ShopUpdateRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  List<String>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$ShopUpdateRequestImplCopyWith<_$ShopUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
