import '../models/comment_models.dart';

class CommentService {
  // Mock data - replace with actual API calls
  Future<PaginatedResponse<CommentItem>> getComments(
    String postId, {
    String? cursor,
    int pageSize = 20,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    // Simulate pagination
    final allComments = _generateMockComments();
    final startIndex = cursor != null ? int.tryParse(cursor) ?? 0 : 0;
    final endIndex = startIndex + pageSize;
    final comments = allComments.skip(startIndex).take(pageSize).toList();
    final hasMore = endIndex < allComments.length;
    final nextCursor = hasMore ? endIndex.toString() : null;

    return PaginatedResponse(
      items: comments,
      hasMore: hasMore,
      nextCursor: nextCursor,
      totalCount: allComments.length,
    );
  }

  Future<PaginatedResponse<ReplyItem>> getReplies(
    String commentId, {
    String? cursor,
    int pageSize = 10,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    // Simulate pagination for replies
    final allReplies = _generateMockReplies(commentId);
    final startIndex = cursor != null ? int.tryParse(cursor) ?? 0 : 0;
    final endIndex = startIndex + pageSize;
    final replies = allReplies.skip(startIndex).take(pageSize).toList();
    final hasMore = endIndex < allReplies.length;
    final nextCursor = hasMore ? endIndex.toString() : null;

    return PaginatedResponse(
      items: replies,
      hasMore: hasMore,
      nextCursor: nextCursor,
      totalCount: allReplies.length,
    );
  }

  Future<PaginatedResponse<NestedReplyItem>> getNestedReplies(
    String replyId, {
    String? cursor,
    int pageSize = 5,
  }) async {
    await Future.delayed(const Duration(milliseconds: 200));

    // Simulate pagination for nested replies
    final allNestedReplies = _generateMockNestedReplies(replyId);
    final startIndex = cursor != null ? int.tryParse(cursor) ?? 0 : 0;
    final endIndex = startIndex + pageSize;
    final nestedReplies = allNestedReplies.skip(startIndex).take(pageSize).toList();
    final hasMore = endIndex < allNestedReplies.length;
    final nextCursor = hasMore ? endIndex.toString() : null;

    return PaginatedResponse(
      items: nestedReplies,
      hasMore: hasMore,
      nextCursor: nextCursor,
      totalCount: allNestedReplies.length,
    );
  }

  Future<CommentItem> addComment(String postId, String commentText) async {
    await Future.delayed(const Duration(milliseconds: 300));

    return CommentItem(
      guid: DateTime.now().millisecondsSinceEpoch.toString(),
      commentText: commentText,
      name: 'Current User',
      personGuid: 'current_user',
      photo: 'https://i.pravatar.cc/150?img=10',
      createdOn: 'Just now',
      reactionCount: 0,
      replyCount: 0,
    );
  }

  Future<ReplyItem> addReply(String commentId, String replyText) async {
    await Future.delayed(const Duration(milliseconds: 300));

    return ReplyItem(
      guid: DateTime.now().millisecondsSinceEpoch.toString(),
      commentGuid: commentId,
      replyComment: replyText,
      name: 'Current User',
      personGuid: 'current_user',
      photo: 'https://i.pravatar.cc/150?img=10',
      replyCreatedOn: 'Just now',
      reactionCount: 0,
      replyCount: 0,
    );
  }

  Future<NestedReplyItem> addNestedReply(
    String replyId,
    String nestedReplyText,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));

    return NestedReplyItem(
      guid: DateTime.now().millisecondsSinceEpoch.toString(),
      replyComment: nestedReplyText,
      name: 'Current User',
      personGuid: 'current_user',
      photo: 'https://i.pravatar.cc/150?img=10',
      replyCreatedOn: 'Just now',
      reactionCount: 0,
    );
  }

  Future<void> reactToComment(String commentId, ReactionType reaction) async {
    await Future.delayed(const Duration(milliseconds: 200));
    // Implement API call to react to comment
  }

  Future<void> reactToReply(String replyId, ReactionType reaction) async {
    await Future.delayed(const Duration(milliseconds: 200));
    // Implement API call to react to reply
  }

  // Helper methods to generate mock data
  List<CommentItem> _generateMockComments() {
    return List.generate(100, (index) {
      final hasReplies = index % 3 == 0;
      // Generate more realistic reply counts - some comments have many replies
      final replyCount = hasReplies ? (index % 10) + 5 : 0;
      
      return CommentItem(
        guid: 'comment_$index',
        commentText: 'Comment number $index - ${_generateRandomText()}',
        name: 'User $index',
        personGuid: 'user_$index',
        photo: 'https://i.pravatar.cc/150?img=${index % 20}',
        createdOn: _generateRandomTime(),
        reactionCount: index % 10,
        replyCount: replyCount,
        loginUserReaction: index % 7 == 0 ? 'like' : null,
        // Set hasMoreReplies to true if there are more than 1 reply available
        hasMoreReplies: hasReplies && replyCount > 1,
      );
    });
  }

  List<ReplyItem> _generateMockReplies(String commentId) {
    return List.generate(50, (index) {
      final hasNestedReplies = index % 4 == 0;
      final nestedReplyCount = hasNestedReplies ? (index % 3) + 1 : 0;
      
      return ReplyItem(
        guid: 'reply_${commentId}_$index',
        commentGuid: commentId,
        replyComment: 'Reply $index to $commentId - ${_generateRandomText()}',
        name: 'ReplyUser $index',
        personGuid: 'reply_user_$index',
        photo: 'https://i.pravatar.cc/150?img=${(index + 10) % 20}',
        replyCreatedOn: _generateRandomTime(),
        reactionCount: index % 5,
        replyCount: nestedReplyCount,
        // Set hasMoreNestedReplies to true if there are more than 1 nested reply available
        hasMoreNestedReplies: hasNestedReplies && nestedReplyCount > 1,
      );
    });
  }

  List<NestedReplyItem> _generateMockNestedReplies(String replyId) {
    return List.generate(20, (index) {
      return NestedReplyItem(
        guid: 'nested_${replyId}_$index',
        replyComment: 'Nested reply $index to $replyId - ${_generateRandomText()}',
        name: 'NestedUser $index',
        personGuid: 'nested_user_$index',
        photo: 'https://i.pravatar.cc/150?img=${(index + 20) % 20}',
        replyCreatedOn: _generateRandomTime(),
        reactionCount: index % 3,
      );
    });
  }

  String _generateRandomText() {
    final texts = [
      'This is amazing! 😍',
      'Great post! 👍',
      'Love this content ❤️',
      'Thanks for sharing! 🙏',
      'Awesome work! 👏',
      'Beautiful! ✨',
      'Incredible! 🤩',
      'Fantastic! 🎉',
    ];
    return texts[DateTime.now().millisecondsSinceEpoch % texts.length];
  }

  String _generateRandomTime() {
    final times = [
      'Just now',
      '2 minutes ago',
      '5 minutes ago',
      '10 minutes ago',
      '1 hour ago',
      '2 hours ago',
      'Today at 10:00 PM',
      'Yesterday at 3:30 PM',
    ];
    return times[DateTime.now().millisecondsSinceEpoch % times.length];
  }
}
