// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentItem _$CommentItemFromJson(Map<String, dynamic> json) => _CommentItem(
  guid: json['guid'] as String,
  commentText: json['commentText'] as String?,
  commentPhoto: json['commentPhoto'] as String?,
  commentVideo: json['commentVideo'] as String?,
  createdOn: json['createdOn'] as String?,
  name: json['name'] as String,
  personGuid: json['personGuid'] as String,
  photo: json['photo'] as String?,
  pageName: json['pageName'] as String?,
  pageGuid: json['pageGuid'] as String?,
  pageProfilePhoto: json['pageProfilePhoto'] as String?,
  reactionCount: (json['reactionCount'] as num?)?.toInt() ?? 0,
  replyCount: (json['replyCount'] as num?)?.toInt() ?? 0,
  postVideoGuid: json['postVideoGuid'] as String?,
  postPhotoGuid: json['postPhotoGuid'] as String?,
  loginUserReaction: json['loginUserReaction'] as String?,
  replies:
      (json['replies'] as List<dynamic>?)
          ?.map((e) => ReplyItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isExpanded: json['isExpanded'] as bool? ?? false,
  isLoadingReplies: json['isLoadingReplies'] as bool? ?? false,
  hasMoreReplies: json['hasMoreReplies'] as bool? ?? false,
  lastReplyCursor: json['lastReplyCursor'] as String?,
  isSubmitting: json['isSubmitting'] as bool? ?? false,
);

Map<String, dynamic> _$CommentItemToJson(_CommentItem instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'commentText': instance.commentText,
      'commentPhoto': instance.commentPhoto,
      'commentVideo': instance.commentVideo,
      'createdOn': instance.createdOn,
      'name': instance.name,
      'personGuid': instance.personGuid,
      'photo': instance.photo,
      'pageName': instance.pageName,
      'pageGuid': instance.pageGuid,
      'pageProfilePhoto': instance.pageProfilePhoto,
      'reactionCount': instance.reactionCount,
      'replyCount': instance.replyCount,
      'postVideoGuid': instance.postVideoGuid,
      'postPhotoGuid': instance.postPhotoGuid,
      'loginUserReaction': instance.loginUserReaction,
      'replies': instance.replies,
      'isExpanded': instance.isExpanded,
      'isLoadingReplies': instance.isLoadingReplies,
      'hasMoreReplies': instance.hasMoreReplies,
      'lastReplyCursor': instance.lastReplyCursor,
      'isSubmitting': instance.isSubmitting,
    };

_ReplyItem _$ReplyItemFromJson(Map<String, dynamic> json) => _ReplyItem(
  guid: json['guid'] as String,
  commentGuid: json['commentGuid'] as String,
  replyComment: json['replyComment'] as String?,
  replyCommentPhoto: json['replyCommentPhoto'] as String?,
  replyCommentVideo: json['replyCommentVideo'] as String?,
  replyCreatedOn: json['replyCreatedOn'] as String?,
  name: json['name'] as String,
  personGuid: json['personGuid'] as String,
  replyCount: (json['replyCount'] as num?)?.toInt() ?? 0,
  reactionCount: (json['reactionCount'] as num?)?.toInt() ?? 0,
  photo: json['photo'] as String?,
  pageName: json['pageName'] as String?,
  pageGuid: json['pageGuid'] as String?,
  pageProfilePhoto: json['pageProfilePhoto'] as String?,
  loginUserReaction: json['loginUserReaction'] as String?,
  nestedReplies:
      (json['nestedReplies'] as List<dynamic>?)
          ?.map((e) => NestedReplyItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isExpanded: json['isExpanded'] as bool? ?? false,
  isLoadingNestedReplies: json['isLoadingNestedReplies'] as bool? ?? false,
  hasMoreNestedReplies: json['hasMoreNestedReplies'] as bool? ?? false,
  lastNestedReplyCursor: json['lastNestedReplyCursor'] as String?,
  isSubmitting: json['isSubmitting'] as bool? ?? false,
);

Map<String, dynamic> _$ReplyItemToJson(_ReplyItem instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'commentGuid': instance.commentGuid,
      'replyComment': instance.replyComment,
      'replyCommentPhoto': instance.replyCommentPhoto,
      'replyCommentVideo': instance.replyCommentVideo,
      'replyCreatedOn': instance.replyCreatedOn,
      'name': instance.name,
      'personGuid': instance.personGuid,
      'replyCount': instance.replyCount,
      'reactionCount': instance.reactionCount,
      'photo': instance.photo,
      'pageName': instance.pageName,
      'pageGuid': instance.pageGuid,
      'pageProfilePhoto': instance.pageProfilePhoto,
      'loginUserReaction': instance.loginUserReaction,
      'nestedReplies': instance.nestedReplies,
      'isExpanded': instance.isExpanded,
      'isLoadingNestedReplies': instance.isLoadingNestedReplies,
      'hasMoreNestedReplies': instance.hasMoreNestedReplies,
      'lastNestedReplyCursor': instance.lastNestedReplyCursor,
      'isSubmitting': instance.isSubmitting,
    };

_NestedReplyItem _$NestedReplyItemFromJson(Map<String, dynamic> json) =>
    _NestedReplyItem(
      guid: json['guid'] as String,
      replyComment: json['replyComment'] as String?,
      replyCommentPhoto: json['replyCommentPhoto'] as String?,
      replyCommentVideo: json['replyCommentVideo'] as String?,
      replyCreatedOn: json['replyCreatedOn'] as String?,
      name: json['name'] as String,
      personGuid: json['personGuid'] as String,
      reactionCount: (json['reactionCount'] as num?)?.toInt() ?? 0,
      photo: json['photo'] as String?,
      pageName: json['pageName'] as String?,
      pageGuid: json['pageGuid'] as String?,
      pageProfilePhoto: json['pageProfilePhoto'] as String?,
      loginUserReaction: json['loginUserReaction'] as String?,
    );

Map<String, dynamic> _$NestedReplyItemToJson(_NestedReplyItem instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'replyComment': instance.replyComment,
      'replyCommentPhoto': instance.replyCommentPhoto,
      'replyCommentVideo': instance.replyCommentVideo,
      'replyCreatedOn': instance.replyCreatedOn,
      'name': instance.name,
      'personGuid': instance.personGuid,
      'reactionCount': instance.reactionCount,
      'photo': instance.photo,
      'pageName': instance.pageName,
      'pageGuid': instance.pageGuid,
      'pageProfilePhoto': instance.pageProfilePhoto,
      'loginUserReaction': instance.loginUserReaction,
    };

_CommentState _$CommentStateFromJson(Map<String, dynamic> json) =>
    _CommentState(
      comments:
          (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      isLoadingMore: json['isLoadingMore'] as bool? ?? false,
      error: json['error'] as String?,
      replyingTo: json['replyingTo'] as String?,
      replyingToName: json['replyingToName'] as String?,
      replyType: $enumDecodeNullable(_$CommentTypeEnumMap, json['replyType']),
      hasMoreComments: json['hasMoreComments'] as bool? ?? false,
      lastCommentCursor: json['lastCommentCursor'] as String?,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$CommentStateToJson(_CommentState instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'isLoading': instance.isLoading,
      'isLoadingMore': instance.isLoadingMore,
      'error': instance.error,
      'replyingTo': instance.replyingTo,
      'replyingToName': instance.replyingToName,
      'replyType': _$CommentTypeEnumMap[instance.replyType],
      'hasMoreComments': instance.hasMoreComments,
      'lastCommentCursor': instance.lastCommentCursor,
      'pageSize': instance.pageSize,
    };

const _$CommentTypeEnumMap = {
  CommentType.root: 'root',
  CommentType.reply: 'reply',
  CommentType.nested: 'nested',
};
