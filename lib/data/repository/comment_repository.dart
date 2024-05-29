import 'package:berrielocal/data/service/comment_service.dart';
import 'package:berrielocal/domain/comment/comments_response.dart';
import 'package:dio/dio.dart';

class CommentRepository {
  CommentRepository(
    this.commentService,
  );

  final CommentService commentService;

  Future<CommentsResponse> getComments(int shopId) async {
    try {
      final result = await commentService.getComments(shopId: shopId);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
