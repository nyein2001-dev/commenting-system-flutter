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

// Provider for comment input state
final commentInputProvider = StateNotifierProvider<CommentInputNotifier, CommentInputState>((ref) {
  return CommentInputNotifier();
});

// State for comment input
class CommentInputState {
  final bool isSubmitting;
  final String text;

  const CommentInputState({
    this.isSubmitting = false,
    this.text = '',
  });

  CommentInputState copyWith({
    bool? isSubmitting,
    String? text,
  }) {
    return CommentInputState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      text: text ?? this.text,
    );
  }
}

// Notifier for comment input state
class CommentInputNotifier extends StateNotifier<CommentInputState> {
  CommentInputNotifier() : super(const CommentInputState());

  void setSubmitting(bool isSubmitting) {
    state = state.copyWith(isSubmitting: isSubmitting);
  }

  void setText(String text) {
    state = state.copyWith(text: text);
  }

  void clearText() {
    state = state.copyWith(text: '');
  }
}

class CommentNotifier extends StateNotifier<CommentState> {
  final CommentService _commentService;

  CommentNotifier(this._commentService) : super(const CommentState());

  Future<void> loadComments(String postId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _commentService.getComments(
        postId,
        pageSize: state.pageSize,
      );
      state = state.copyWith(
        comments: response.items,
        isLoading: false,
        hasMoreComments: response.hasMore,
        lastCommentCursor: response.nextCursor,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> loadMoreComments(String postId) async {
    if (state.isLoadingMore || !state.hasMoreComments) return;

    state = state.copyWith(isLoadingMore: true);

    try {
      final response = await _commentService.getComments(
        postId,
        cursor: state.lastCommentCursor,
        pageSize: state.pageSize,
      );
      
      state = state.copyWith(
        comments: [...state.comments, ...response.items],
        isLoadingMore: false,
        hasMoreComments: response.hasMore,
        lastCommentCursor: response.nextCursor,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoadingMore: false);
    }
  }

  Future<void> loadReplies(String commentId) async {
    final commentIndex = state.comments.indexWhere((c) => c.guid == commentId);
    if (commentIndex == -1) return;

    final comment = state.comments[commentIndex];
    if (comment.isLoadingReplies) return;

    // Update comment to show loading state
    final updatedComments = List<CommentItem>.from(state.comments);
    updatedComments[commentIndex] = comment.copyWith(isLoadingReplies: true);
    state = state.copyWith(comments: updatedComments);

    try {
      final response = await _commentService.getReplies(
        commentId,
        pageSize: 10,
      );

      final updatedComment = comment.copyWith(
        replies: response.items,
        isLoadingReplies: false,
        hasMoreReplies: response.hasMore,
        lastReplyCursor: response.nextCursor,
      );

      updatedComments[commentIndex] = updatedComment;
      state = state.copyWith(comments: updatedComments);
    } catch (e) {
      final updatedComment = comment.copyWith(isLoadingReplies: false);
      updatedComments[commentIndex] = updatedComment;
      state = state.copyWith(comments: updatedComments, error: e.toString());
    }
  }

  Future<void> loadMoreReplies(String commentId) async {
    final commentIndex = state.comments.indexWhere((c) => c.guid == commentId);
    if (commentIndex == -1) return;

    final comment = state.comments[commentIndex];
    if (comment.isLoadingReplies || !comment.hasMoreReplies) return;

    // Update comment to show loading state
    final updatedComments = List<CommentItem>.from(state.comments);
    updatedComments[commentIndex] = comment.copyWith(isLoadingReplies: true);
    state = state.copyWith(comments: updatedComments);

    try {
      final response = await _commentService.getReplies(
        commentId,
        cursor: comment.lastReplyCursor,
        pageSize: 10,
      );

      final updatedComment = comment.copyWith(
        replies: [...comment.replies, ...response.items],
        isLoadingReplies: false,
        hasMoreReplies: response.hasMore,
        lastReplyCursor: response.nextCursor,
      );

      updatedComments[commentIndex] = updatedComment;
      state = state.copyWith(comments: updatedComments);
    } catch (e) {
      final updatedComment = comment.copyWith(isLoadingReplies: false);
      updatedComments[commentIndex] = updatedComment;
      state = state.copyWith(comments: updatedComments, error: e.toString());
    }
  }

  Future<void> loadNestedReplies(String commentId, String replyId) async {
    final commentIndex = state.comments.indexWhere((c) => c.guid == commentId);
    if (commentIndex == -1) return;

    final comment = state.comments[commentIndex];
    final replyIndex = comment.replies.indexWhere((r) => r.guid == replyId);
    if (replyIndex == -1) return;

    final reply = comment.replies[replyIndex];
    if (reply.isLoadingNestedReplies) return;

    // Update reply to show loading state
    final updatedReplies = List<ReplyItem>.from(comment.replies);
    updatedReplies[replyIndex] = reply.copyWith(isLoadingNestedReplies: true);
    
    final updatedComments = List<CommentItem>.from(state.comments);
    updatedComments[commentIndex] = comment.copyWith(replies: updatedReplies);
    state = state.copyWith(comments: updatedComments);

    try {
      final response = await _commentService.getNestedReplies(
        replyId,
        pageSize: 5,
      );

      final updatedReply = reply.copyWith(
        nestedReplies: response.items,
        isLoadingNestedReplies: false,
        hasMoreNestedReplies: response.hasMore,
        lastNestedReplyCursor: response.nextCursor,
      );

      updatedReplies[replyIndex] = updatedReply;
      updatedComments[commentIndex] = comment.copyWith(replies: updatedReplies);
      state = state.copyWith(comments: updatedComments);
    } catch (e) {
      final updatedReply = reply.copyWith(isLoadingNestedReplies: false);
      updatedReplies[replyIndex] = updatedReply;
      updatedComments[commentIndex] = comment.copyWith(replies: updatedReplies);
      state = state.copyWith(comments: updatedComments, error: e.toString());
    }
  }

  Future<void> loadMoreNestedReplies(String commentId, String replyId) async {
    final commentIndex = state.comments.indexWhere((c) => c.guid == commentId);
    if (commentIndex == -1) return;

    final comment = state.comments[commentIndex];
    final replyIndex = comment.replies.indexWhere((r) => r.guid == replyId);
    if (replyIndex == -1) return;

    final reply = comment.replies[replyIndex];
    if (reply.isLoadingNestedReplies || !reply.hasMoreNestedReplies) return;

    // Update reply to show loading state
    final updatedReplies = List<ReplyItem>.from(comment.replies);
    updatedReplies[replyIndex] = reply.copyWith(isLoadingNestedReplies: true);
    
    final updatedComments = List<CommentItem>.from(state.comments);
    updatedComments[commentIndex] = comment.copyWith(replies: updatedReplies);
    state = state.copyWith(comments: updatedComments);

    try {
      final response = await _commentService.getNestedReplies(
        replyId,
        cursor: reply.lastNestedReplyCursor,
        pageSize: 5,
      );

      final updatedReply = reply.copyWith(
        nestedReplies: [...reply.nestedReplies, ...response.items],
        isLoadingNestedReplies: false,
        hasMoreNestedReplies: response.hasMore,
        lastNestedReplyCursor: response.nextCursor,
      );

      updatedReplies[replyIndex] = updatedReply;
      updatedComments[commentIndex] = comment.copyWith(replies: updatedReplies);
      state = state.copyWith(comments: updatedComments);
    } catch (e) {
      final updatedReply = reply.copyWith(isLoadingNestedReplies: false);
      updatedReplies[replyIndex] = updatedReply;
      updatedComments[commentIndex] = comment.copyWith(replies: updatedReplies);
      state = state.copyWith(comments: updatedComments, error: e.toString());
    }
  }

  Future<String?> addComment(String postId, String commentText) async {
    try {
      // Create a temporary comment with "Commenting" state
      final tempComment = CommentItem(
        guid: 'temp_${DateTime.now().millisecondsSinceEpoch}',
        commentText: commentText,
        name: 'Current User',
        personGuid: 'current_user',
        photo: 'https://i.pravatar.cc/150?img=10',
        createdOn: 'Commenting',
        isSubmitting: true,
      );
      
      // Add temporary comment to the top (newest first)
      state = state.copyWith(comments: [tempComment, ...state.comments]);
      
      // Simulate delay and get real comment
      await Future.delayed(const Duration(seconds: 2));
      final newComment = await _commentService.addComment(postId, commentText);
      
      // Replace temporary comment with real one, marked as newly added
      final finalComment = newComment.copyWith(isNewlyAdded: true);
      final updatedComments = state.comments.map((comment) {
        if (comment.guid == tempComment.guid) {
          return finalComment;
        }
        return comment;
      }).toList();
      
      state = state.copyWith(comments: updatedComments);
      
      // Remove highlighting after 5 seconds
      Future.delayed(const Duration(seconds: 5), () {
        final finalUpdatedComments = state.comments.map((comment) {
          if (comment.guid == finalComment.guid) {
            return comment.copyWith(isNewlyAdded: false);
          }
          return comment;
        }).toList();
        state = state.copyWith(comments: finalUpdatedComments);
      });
      
      return finalComment.guid;
    } catch (e) {
      // Remove temporary comment on error
      final updatedComments = state.comments.where((comment) => !comment.isSubmitting).toList();
      state = state.copyWith(comments: updatedComments, error: e.toString());
      return null;
    }
  }

  Future<String?> addReply(String commentId, String replyText) async {
    try {
      // Create a temporary reply with "Commenting" state
      final tempReply = ReplyItem(
        guid: 'temp_reply_${DateTime.now().millisecondsSinceEpoch}',
        commentGuid: commentId,
        replyComment: replyText,
        name: 'Current User',
        personGuid: 'current_user',
        photo: 'https://i.pravatar.cc/150?img=10',
        replyCreatedOn: 'Commenting',
        isSubmitting: true,
      );

      // Add temporary reply to the comment (newest last for replies)
      final updatedComments = state.comments.map((comment) {
        if (comment.guid == commentId) {
          return comment.copyWith(
            replies: [...comment.replies, tempReply], // Add to end (newest bottom)
            replyCount: comment.replyCount + 1,
          );
        }
        return comment;
      }).toList();

      state = state.copyWith(comments: updatedComments);

      // Simulate delay and get real reply
      await Future.delayed(const Duration(seconds: 2));
      final newReply = await _commentService.addReply(commentId, replyText);

      // Replace temporary reply with real one, marked as newly added
      final finalReply = newReply.copyWith(isNewlyAdded: true);
      final finalUpdatedComments = state.comments.map((comment) {
        if (comment.guid == commentId) {
          final updatedReplies = comment.replies.map((reply) {
            if (reply.guid == tempReply.guid) {
              return finalReply;
            }
            return reply;
          }).toList();
          return comment.copyWith(replies: updatedReplies);
        }
        return comment;
      }).toList();

      state = state.copyWith(
        comments: finalUpdatedComments,
        replyingTo: null,
        replyingToName: null,
        replyType: null,
      );
      
      // Remove highlighting after 5 seconds
      Future.delayed(const Duration(seconds: 5), () {
        final finalFinalUpdatedComments = state.comments.map((comment) {
          if (comment.guid == commentId) {
            final updatedReplies = comment.replies.map((reply) {
              if (reply.guid == finalReply.guid) {
                return reply.copyWith(isNewlyAdded: false);
              }
              return reply;
            }).toList();
            return comment.copyWith(replies: updatedReplies);
          }
          return comment;
        }).toList();
        state = state.copyWith(comments: finalFinalUpdatedComments);
      });
      
      return finalReply.guid;
    } catch (e) {
      // Remove temporary reply on error
      final updatedComments = state.comments.map((comment) {
        if (comment.guid == commentId) {
          final updatedReplies = comment.replies.where((reply) => !reply.isSubmitting).toList();
          return comment.copyWith(replies: updatedReplies);
        }
        return comment;
      }).toList();
      state = state.copyWith(comments: updatedComments, error: e.toString());
      return null;
    }
  }

  Future<String?> addNestedReply(String replyId, String nestedReplyText) async {
    try {
      // Create a temporary nested reply with "Commenting" state
      final tempNestedReply = NestedReplyItem(
        guid: 'temp_nested_${DateTime.now().millisecondsSinceEpoch}',
        replyComment: nestedReplyText,
        name: 'Current User',
        personGuid: 'current_user',
        photo: 'https://i.pravatar.cc/150?img=10',
        replyCreatedOn: 'Commenting',
        isSubmitting: true,
      );

      // Add temporary nested reply to the reply (newest last for nested replies)
      final updatedComments = state.comments.map((comment) {
        final updatedReplies = comment.replies.map((reply) {
          if (reply.guid == replyId) {
            return reply.copyWith(
              nestedReplies: [...reply.nestedReplies, tempNestedReply], // Add to end (newest bottom)
              replyCount: reply.replyCount + 1,
            );
          }
          return reply;
        }).toList();
        return comment.copyWith(replies: updatedReplies);
      }).toList();

      state = state.copyWith(comments: updatedComments);

      // Simulate delay and get real nested reply
      await Future.delayed(const Duration(seconds: 2));
      final newNestedReply = await _commentService.addNestedReply(
        replyId,
        nestedReplyText,
      );

      // Replace temporary nested reply with real one, marked as newly added
      final finalNestedReply = newNestedReply.copyWith(isNewlyAdded: true);
      final finalUpdatedComments = state.comments.map((comment) {
        final updatedReplies = comment.replies.map((reply) {
          if (reply.guid == replyId) {
            final updatedNestedReplies = reply.nestedReplies.map((nestedReply) {
              if (nestedReply.guid == tempNestedReply.guid) {
                return finalNestedReply;
              }
              return nestedReply;
            }).toList();
            return reply.copyWith(nestedReplies: updatedNestedReplies);
          }
          return reply;
        }).toList();
        return comment.copyWith(replies: updatedReplies);
      }).toList();

      state = state.copyWith(
        comments: finalUpdatedComments,
        replyingTo: null,
        replyingToName: null,
        replyType: null,
      );
      
      // Remove highlighting after 5 seconds
      Future.delayed(const Duration(seconds: 5), () {
        final finalFinalUpdatedComments = state.comments.map((comment) {
          final updatedReplies = comment.replies.map((reply) {
            if (reply.guid == replyId) {
              final updatedNestedReplies = reply.nestedReplies.map((nestedReply) {
                if (nestedReply.guid == finalNestedReply.guid) {
                  return nestedReply.copyWith(isNewlyAdded: false);
                }
                return nestedReply;
              }).toList();
              return reply.copyWith(nestedReplies: updatedNestedReplies);
            }
            return reply;
          }).toList();
          return comment.copyWith(replies: updatedReplies);
        }).toList();
        state = state.copyWith(comments: finalFinalUpdatedComments);
      });
      
      return finalNestedReply.guid;
    } catch (e) {
      // Remove temporary nested reply on error
      final updatedComments = state.comments.map((comment) {
        final updatedReplies = comment.replies.map((reply) {
          if (reply.guid == replyId) {
            final updatedNestedReplies = reply.nestedReplies.where((nestedReply) => !nestedReply.isSubmitting).toList();
            return reply.copyWith(nestedReplies: updatedNestedReplies);
          }
          return reply;
        }).toList();
        return comment.copyWith(replies: updatedReplies);
      }).toList();
      state = state.copyWith(comments: updatedComments, error: e.toString());
      return null;
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
    final updatedComments = state.comments.map((comment) {
      if (comment.guid == commentId) {
        final isExpanding = !comment.isExpanded;
        
        // Load replies when expanding for the first time
        if (isExpanding && comment.replies.isEmpty && comment.replyCount > 0) {
          loadReplies(commentId);
        }
        
        return comment.copyWith(isExpanded: isExpanding);
      }
      return comment;
    }).toList();

    state = state.copyWith(comments: updatedComments);
  }

  void toggleReplyExpansion(String commentId, String replyId) {
    final updatedComments = state.comments.map((comment) {
      if (comment.guid == commentId) {
        final updatedReplies = comment.replies.map((reply) {
          if (reply.guid == replyId) {
            final isExpanding = !reply.isExpanded;
            
            // Load nested replies when expanding for the first time
            if (isExpanding && reply.nestedReplies.isEmpty && reply.replyCount > 0) {
              loadNestedReplies(commentId, replyId);
            }
            
            return reply.copyWith(isExpanded: isExpanding);
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

      final updatedComments = state.comments.map((comment) {
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

      final updatedComments = state.comments.map((comment) {
        if (comment.guid == commentId) {
          final updatedReplies = comment.replies.map((reply) {
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
