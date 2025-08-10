import '../models/comment_models.dart';

class CommentService {
  // Mock data - replace with actual API calls
  Future<List<CommentItem>> getComments(String postId) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      CommentItem(
        guid: '1',
        commentText: 'Beautiful😍❤️',
        name: 'Oleg Ivanov',
        personGuid: 'user1',
        photo: 'https://i.pravatar.cc/150?img=1',
        createdOn: 'Today at 10:00 PM',
        reactionCount: 1,
        replyCount: 1,
        loginUserReaction: 'love',
        replies: [
          ReplyItem(
            guid: 'reply1',
            commentGuid: '1',
            replyComment: 'Thank you:3',
            name: 'Annette Black',
            personGuid: 'user2',
            photo: 'https://i.pravatar.cc/150?img=2',
            replyCreatedOn: 'Today at 10:00 PM',
            reactionCount: 0,
            replyCount: 0,
          ),
        ],
      ),
      CommentItem(
        guid: '2',
        commentText: 'Love it ❤️',
        name: 'Emmilee',
        personGuid: 'user3',
        photo: 'https://i.pravatar.cc/150?img=3',
        createdOn: 'Today at 10:00 PM',
        reactionCount: 0,
        replyCount: 0,
      ),
      CommentItem(
        guid: '3',
        commentText: 'hi',
        name: 'U Shine',
        personGuid: 'user4',
        photo: 'https://i.pravatar.cc/150?img=4',
        createdOn: '12 Jun 2025',
        reactionCount: 0,
        replyCount: 1,
        replies: [
          ReplyItem(
            guid: 'reply2',
            commentGuid: '3',
            replyComment: 'U Shine 😊',
            name: 'Monkey D Dev',
            personGuid: 'user5',
            photo: 'https://i.pravatar.cc/150?img=5',
            replyCreatedOn: '2 hour ago',
            reactionCount: 0,
            replyCount: 2,
            nestedReplies: [
              NestedReplyItem(
                guid: 'nested1',
                replyComment: 'Monkey D Dev good',
                name: 'Monkey D Dev',
                personGuid: 'user5',
                photo: 'https://i.pravatar.cc/150?img=5',
                replyCreatedOn: '1 hour ago',
                reactionCount: 0,
              ),
              NestedReplyItem(
                guid: 'nested2',
                replyComment: 'Monkey D Dev good 2',
                name: 'Monkey D Dev',
                personGuid: 'user5',
                photo: 'https://i.pravatar.cc/150?img=5',
                replyCreatedOn: '1 hour ago',
                reactionCount: 0,
              ),
            ],
          ),
        ],
      ),
    ];
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
}
