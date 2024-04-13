// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestDto _$TestDtoFromJson(Map<String, dynamic> json) {
  return _TestDto.fromJson(json);
}

/// @nodoc
mixin _$TestDto {
  int get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestDtoCopyWith<TestDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDtoCopyWith<$Res> {
  factory $TestDtoCopyWith(TestDto value, $Res Function(TestDto) then) =
      _$TestDtoCopyWithImpl<$Res, TestDto>;
  @useResult
  $Res call({int id, String message});
}

/// @nodoc
class _$TestDtoCopyWithImpl<$Res, $Val extends TestDto>
    implements $TestDtoCopyWith<$Res> {
  _$TestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestDtoImplCopyWith<$Res> implements $TestDtoCopyWith<$Res> {
  factory _$$TestDtoImplCopyWith(
          _$TestDtoImpl value, $Res Function(_$TestDtoImpl) then) =
      __$$TestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String message});
}

/// @nodoc
class __$$TestDtoImplCopyWithImpl<$Res>
    extends _$TestDtoCopyWithImpl<$Res, _$TestDtoImpl>
    implements _$$TestDtoImplCopyWith<$Res> {
  __$$TestDtoImplCopyWithImpl(
      _$TestDtoImpl _value, $Res Function(_$TestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_$TestDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestDtoImpl implements _TestDto {
  const _$TestDtoImpl({required this.id, required this.message});

  factory _$TestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String message;

  @override
  String toString() {
    return 'TestDto(id: $id, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDtoImplCopyWith<_$TestDtoImpl> get copyWith =>
      __$$TestDtoImplCopyWithImpl<_$TestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestDtoImplToJson(
      this,
    );
  }
}

abstract class _TestDto implements TestDto {
  const factory _TestDto(
      {required final int id, required final String message}) = _$TestDtoImpl;

  factory _TestDto.fromJson(Map<String, dynamic> json) = _$TestDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TestDtoImplCopyWith<_$TestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
