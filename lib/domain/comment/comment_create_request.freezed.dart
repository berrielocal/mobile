// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentCreateRequest _$CommentCreateRequestFromJson(Map<String, dynamic> json) {
  return _CommentCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$CommentCreateRequest {
  int? get shopId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCreateRequestCopyWith<CommentCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCreateRequestCopyWith<$Res> {
  factory $CommentCreateRequestCopyWith(CommentCreateRequest value,
          $Res Function(CommentCreateRequest) then) =
      _$CommentCreateRequestCopyWithImpl<$Res, CommentCreateRequest>;
  @useResult
  $Res call({int? shopId, String? text, double? rate});
}

/// @nodoc
class _$CommentCreateRequestCopyWithImpl<$Res,
        $Val extends CommentCreateRequest>
    implements $CommentCreateRequestCopyWith<$Res> {
  _$CommentCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
    Object? text = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentCreateRequestImplCopyWith<$Res>
    implements $CommentCreateRequestCopyWith<$Res> {
  factory _$$CommentCreateRequestImplCopyWith(_$CommentCreateRequestImpl value,
          $Res Function(_$CommentCreateRequestImpl) then) =
      __$$CommentCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? shopId, String? text, double? rate});
}

/// @nodoc
class __$$CommentCreateRequestImplCopyWithImpl<$Res>
    extends _$CommentCreateRequestCopyWithImpl<$Res, _$CommentCreateRequestImpl>
    implements _$$CommentCreateRequestImplCopyWith<$Res> {
  __$$CommentCreateRequestImplCopyWithImpl(_$CommentCreateRequestImpl _value,
      $Res Function(_$CommentCreateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
    Object? text = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$CommentCreateRequestImpl(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CommentCreateRequestImpl implements _CommentCreateRequest {
  const _$CommentCreateRequestImpl({this.shopId, this.text, this.rate});

  factory _$CommentCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentCreateRequestImplFromJson(json);

  @override
  final int? shopId;
  @override
  final String? text;
  @override
  final double? rate;

  @override
  String toString() {
    return 'CommentCreateRequest(shopId: $shopId, text: $text, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentCreateRequestImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopId, text, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentCreateRequestImplCopyWith<_$CommentCreateRequestImpl>
      get copyWith =>
          __$$CommentCreateRequestImplCopyWithImpl<_$CommentCreateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _CommentCreateRequest implements CommentCreateRequest {
  const factory _CommentCreateRequest(
      {final int? shopId,
      final String? text,
      final double? rate}) = _$CommentCreateRequestImpl;

  factory _CommentCreateRequest.fromJson(Map<String, dynamic> json) =
      _$CommentCreateRequestImpl.fromJson;

  @override
  int? get shopId;
  @override
  String? get text;
  @override
  double? get rate;
  @override
  @JsonKey(ignore: true)
  _$$CommentCreateRequestImplCopyWith<_$CommentCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
