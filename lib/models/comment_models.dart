import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_models.freezed.dart';
part 'comment_models.g.dart';

@freezed
abstract class CommentItem with _$CommentItem {
  const factory CommentItem({
    required String guid,
    String? commentText,
    String? commentPhoto,
    String? commentVideo,
    String? createdOn,
    required String name,
    required String personGuid,
    String? photo,
    String? pageName,
    String? pageGuid,
    String? pageProfilePhoto,
    @Default(0) int reactionCount,
    @Default(0) int replyCount,
    String? postVideoGuid,
    String? postPhotoGuid,
    String? loginUserReaction,
    @Default([]) List<ReplyItem> replies,
    @Default(false) bool isExpanded,
  }) = _CommentItem;

  factory CommentItem.fromJson(Map<String, dynamic> json) =>
      _$CommentItemFromJson(json);
}

@freezed
abstract class ReplyItem with _$ReplyItem {
  const factory ReplyItem({
    required String guid,
    required String commentGuid,
    String? replyComment,
    String? replyCommentPhoto,
    String? replyCommentVideo,
    String? replyCreatedOn,
    required String name,
    required String personGuid,
    @Default(0) int replyCount,
    @Default(0) int reactionCount,
    String? photo,
    String? pageName,
    String? pageGuid,
    String? pageProfilePhoto,
    String? loginUserReaction,
    @Default([]) List<NestedReplyItem> nestedReplies,
    @Default(false) bool isExpanded,
  }) = _ReplyItem;

  factory ReplyItem.fromJson(Map<String, dynamic> json) =>
      _$ReplyItemFromJson(json);
}

@freezed
abstract class NestedReplyItem with _$NestedReplyItem {
  const factory NestedReplyItem({
    required String guid,
    String? replyComment,
    String? replyCommentPhoto,
    String? replyCommentVideo,
    String? replyCreatedOn,
    required String name,
    required String personGuid,
    @Default(0) int reactionCount,
    String? photo,
    String? pageName,
    String? pageGuid,
    String? pageProfilePhoto,
    String? loginUserReaction,
  }) = _NestedReplyItem;

  factory NestedReplyItem.fromJson(Map<String, dynamic> json) =>
      _$NestedReplyItemFromJson(json);
}

@freezed
abstract class CommentState with _$CommentState {
  const factory CommentState({
    @Default([]) List<CommentItem> comments,
    @Default(false) bool isLoading,
    String? error,
    String? replyingTo,
    String? replyingToName,
    CommentType? replyType,
  }) = _CommentState;

  factory CommentState.fromJson(Map<String, dynamic> json) =>
      _$CommentStateFromJson(json);
}

enum CommentType { root, reply, nested }

@freezed
class ReactionType with _$ReactionType {
  const factory ReactionType.like() = _Like;
  const factory ReactionType.love() = _Love;
  const factory ReactionType.laugh() = _Laugh;
  const factory ReactionType.angry() = _Angry;
  const factory ReactionType.sad() = _Sad;
}