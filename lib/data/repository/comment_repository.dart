import 'package:berrielocal/data/service/comment_service.dart';
import 'package:berrielocal/domain/comment/comment_create_request.dart';
import 'package:berrielocal/domain/comment/comment_response.dart';
import 'package:berrielocal/domain/comment/comments_response.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

class CommentRepository {
  CommentRepository(
    this.commentService,
  );

  final CommentService commentService;
  final BehaviorSubject<CommentsResponse> comments = BehaviorSubject();

  Future<CommentsResponse> getComments(int shopId) async {
    try {
      final result = await commentService.getComments(shopId: shopId);
      comments.add(result);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<void> postComment(CommentCreateRequest request) async {
    try {
      await commentService.postComment(request: request);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
