// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentsResponse _$CommentsResponseFromJson(Map<String, dynamic> json) {
  return _CommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentsResponse {
  List<CommentResponse> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsResponseCopyWith<CommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsResponseCopyWith<$Res> {
  factory $CommentsResponseCopyWith(
          CommentsResponse value, $Res Function(CommentsResponse) then) =
      _$CommentsResponseCopyWithImpl<$Res, CommentsResponse>;
  @useResult
  $Res call({List<CommentResponse> comments});
}

/// @nodoc
class _$CommentsResponseCopyWithImpl<$Res, $Val extends CommentsResponse>
    implements $CommentsResponseCopyWith<$Res> {
  _$CommentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsResponseImplCopyWith<$Res>
    implements $CommentsResponseCopyWith<$Res> {
  factory _$$CommentsResponseImplCopyWith(_$CommentsResponseImpl value,
          $Res Function(_$CommentsResponseImpl) then) =
      __$$CommentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentResponse> comments});
}

/// @nodoc
class __$$CommentsResponseImplCopyWithImpl<$Res>
    extends _$CommentsResponseCopyWithImpl<$Res, _$CommentsResponseImpl>
    implements _$$CommentsResponseImplCopyWith<$Res> {
  __$$CommentsResponseImplCopyWithImpl(_$CommentsResponseImpl _value,
      $Res Function(_$CommentsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentsResponseImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsResponseImpl implements _CommentsResponse {
  const _$CommentsResponseImpl({required final List<CommentResponse> comments})
      : _comments = comments;

  factory _$CommentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsResponseImplFromJson(json);

  final List<CommentResponse> _comments;
  @override
  List<CommentResponse> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentsResponse(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsResponseImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsResponseImplCopyWith<_$CommentsResponseImpl> get copyWith =>
      __$$CommentsResponseImplCopyWithImpl<_$CommentsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentsResponse implements CommentsResponse {
  const factory _CommentsResponse(
      {required final List<CommentResponse> comments}) = _$CommentsResponseImpl;

  factory _CommentsResponse.fromJson(Map<String, dynamic> json) =
      _$CommentsResponseImpl.fromJson;

  @override
  List<CommentResponse> get comments;
  @override
  @JsonKey(ignore: true)
  _$$CommentsResponseImplCopyWith<_$CommentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
