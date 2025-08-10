import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_models.dart';
import '../services/comment_service.dart';

final commentServiceProvider = Provider<CommentService>((ref) {
  return CommentService();
});

final commentProvider = StateNotifierProvider<CommentNotifier, CommentState>((
  ref,
) {
  final commentService = ref.watch(commentServiceProvider);
  return CommentNotifier(commentService);
});

class CommentNotifier extends StateNotifier<CommentState> {
  final CommentService _commentService;

  CommentNotifier(this._commentService) : super(const CommentState());

  Future<void> loadComments(String postId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final comments = await _commentService.getComments(postId);
      state = state.copyWith(comments: comments, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> addComment(String postId, String commentText) async {
    try {
      final newComment = await _commentService.addComment(postId, commentText);
      state = state.copyWith(comments: [...state.comments, newComment]);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> addReply(String commentId, String replyText) async {
    try {
      final newReply = await _commentService.addReply(commentId, replyText);

      final updatedComments =
          state.comments.map((comment) {
            if (comment.guid == commentId) {
              return comment.copyWith(
                replies: [...comment.replies, newReply],
                replyCount: comment.replyCount + 1,
              );
            }
            return comment;
          }).toList();

      state = state.copyWith(
        comments: updatedComments,
        replyingTo: null,
        replyingToName: null,
        replyType: null,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> addNestedReply(String replyId, String nestedReplyText) async {
    try {
      final newNestedReply = await _commentService.addNestedReply(
        replyId,
        nestedReplyText,
      );

      final updatedComments =
          state.comments.map((comment) {
            final updatedReplies =
                comment.replies.map((reply) {
                  if (reply.guid == replyId) {
                    return reply.copyWith(
                      nestedReplies: [...reply.nestedReplies, newNestedReply],
                      replyCount: reply.replyCount + 1,
                    );
                  }
                  return reply;
                }).toList();

            return comment.copyWith(replies: updatedReplies);
          }).toList();

      state = state.copyWith(
        comments: updatedComments,
        replyingTo: null,
        replyingToName: null,
        replyType: null,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  void setReplyTarget(String targetId, String targetName, CommentType type) {
    state = state.copyWith(
      replyingTo: targetId,
      replyingToName: targetName,
      replyType: type,
    );
  }

  void clearReplyTarget() {
    state = state.copyWith(
      replyingTo: null,
      replyingToName: null,
      replyType: null,
    );
  }

  void toggleCommentExpansion(String commentId) {
    final updatedComments =
        state.comments.map((comment) {
          if (comment.guid == commentId) {
            return comment.copyWith(isExpanded: !comment.isExpanded);
          }
          return comment;
        }).toList();

    state = state.copyWith(comments: updatedComments);
  }

  void toggleReplyExpansion(String commentId, String replyId) {
    final updatedComments =
        state.comments.map((comment) {
          if (comment.guid == commentId) {
            final updatedReplies =
                comment.replies.map((reply) {
                  if (reply.guid == replyId) {
                    return reply.copyWith(isExpanded: !reply.isExpanded);
                  }
                  return reply;
                }).toList();
            return comment.copyWith(replies: updatedReplies);
          }
          return comment;
        }).toList();

    state = state.copyWith(comments: updatedComments);
  }

  Future<void> reactToComment(String commentId, ReactionType reaction) async {
    try {
      await _commentService.reactToComment(commentId, reaction);

      final updatedComments =
          state.comments.map((comment) {
            if (comment.guid == commentId) {
              return comment.copyWith(
                reactionCount: comment.reactionCount + 1,
                loginUserReaction: reaction.toString(),
              );
            }
            return comment;
          }).toList();

      state = state.copyWith(comments: updatedComments);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> reactToReply(
    String commentId,
    String replyId,
    ReactionType reaction,
  ) async {
    try {
      await _commentService.reactToReply(replyId, reaction);

      final updatedComments =
          state.comments.map((comment) {
            if (comment.guid == commentId) {
              final updatedReplies =
                  comment.replies.map((reply) {
                    if (reply.guid == replyId) {
                      return reply.copyWith(
                        reactionCount: reply.reactionCount + 1,
                        loginUserReaction: reaction.toString(),
                      );
                    }
                    return reply;
                  }).toList();
              return comment.copyWith(replies: updatedReplies);
            }
            return comment;
          }).toList();

      state = state.copyWith(comments: updatedComments);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}
