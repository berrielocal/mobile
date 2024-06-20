// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_order_status_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeOrderStatusRequest _$ChangeOrderStatusRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangeOrderStatusRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangeOrderStatusRequest {
  int? get orderPartId => throw _privateConstructorUsedError;
  String? get newStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeOrderStatusRequestCopyWith<ChangeOrderStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOrderStatusRequestCopyWith<$Res> {
  factory $ChangeOrderStatusRequestCopyWith(ChangeOrderStatusRequest value,
          $Res Function(ChangeOrderStatusRequest) then) =
      _$ChangeOrderStatusRequestCopyWithImpl<$Res, ChangeOrderStatusRequest>;
  @useResult
  $Res call({int? orderPartId, String? newStatus});
}

/// @nodoc
class _$ChangeOrderStatusRequestCopyWithImpl<$Res,
        $Val extends ChangeOrderStatusRequest>
    implements $ChangeOrderStatusRequestCopyWith<$Res> {
  _$ChangeOrderStatusRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderPartId = freezed,
    Object? newStatus = freezed,
  }) {
    return _then(_value.copyWith(
      orderPartId: freezed == orderPartId
          ? _value.orderPartId
          : orderPartId // ignore: cast_nullable_to_non_nullable
              as int?,
      newStatus: freezed == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeOrderStatusRequestImplCopyWith<$Res>
    implements $ChangeOrderStatusRequestCopyWith<$Res> {
  factory _$$ChangeOrderStatusRequestImplCopyWith(
          _$ChangeOrderStatusRequestImpl value,
          $Res Function(_$ChangeOrderStatusRequestImpl) then) =
      __$$ChangeOrderStatusRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? orderPartId, String? newStatus});
}

/// @nodoc
class __$$ChangeOrderStatusRequestImplCopyWithImpl<$Res>
    extends _$ChangeOrderStatusRequestCopyWithImpl<$Res,
        _$ChangeOrderStatusRequestImpl>
    implements _$$ChangeOrderStatusRequestImplCopyWith<$Res> {
  __$$ChangeOrderStatusRequestImplCopyWithImpl(
      _$ChangeOrderStatusRequestImpl _value,
      $Res Function(_$ChangeOrderStatusRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderPartId = freezed,
    Object? newStatus = freezed,
  }) {
    return _then(_$ChangeOrderStatusRequestImpl(
      orderPartId: freezed == orderPartId
          ? _value.orderPartId
          : orderPartId // ignore: cast_nullable_to_non_nullable
              as int?,
      newStatus: freezed == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ChangeOrderStatusRequestImpl implements _ChangeOrderStatusRequest {
  const _$ChangeOrderStatusRequestImpl({this.orderPartId, this.newStatus});

  factory _$ChangeOrderStatusRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeOrderStatusRequestImplFromJson(json);

  @override
  final int? orderPartId;
  @override
  final String? newStatus;

  @override
  String toString() {
    return 'ChangeOrderStatusRequest(orderPartId: $orderPartId, newStatus: $newStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOrderStatusRequestImpl &&
            (identical(other.orderPartId, orderPartId) ||
                other.orderPartId == orderPartId) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderPartId, newStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOrderStatusRequestImplCopyWith<_$ChangeOrderStatusRequestImpl>
      get copyWith => __$$ChangeOrderStatusRequestImplCopyWithImpl<
          _$ChangeOrderStatusRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeOrderStatusRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangeOrderStatusRequest implements ChangeOrderStatusRequest {
  const factory _ChangeOrderStatusRequest(
      {final int? orderPartId,
      final String? newStatus}) = _$ChangeOrderStatusRequestImpl;

  factory _ChangeOrderStatusRequest.fromJson(Map<String, dynamic> json) =
      _$ChangeOrderStatusRequestImpl.fromJson;

  @override
  int? get orderPartId;
  @override
  String? get newStatus;
  @override
  @JsonKey(ignore: true)
  _$$ChangeOrderStatusRequestImplCopyWith<_$ChangeOrderStatusRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
