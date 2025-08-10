// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentItem {

 String get guid; String? get commentText; String? get commentPhoto; String? get commentVideo; String? get createdOn; String get name; String get personGuid; String? get photo; String? get pageName; String? get pageGuid; String? get pageProfilePhoto; int get reactionCount; int get replyCount; String? get postVideoGuid; String? get postPhotoGuid; String? get loginUserReaction; List<ReplyItem> get replies; bool get isExpanded; bool get isLoadingReplies; bool get hasMoreReplies; String? get lastReplyCursor; bool get isSubmitting;
/// Create a copy of CommentItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentItemCopyWith<CommentItem> get copyWith => _$CommentItemCopyWithImpl<CommentItem>(this as CommentItem, _$identity);

  /// Serializes this CommentItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentItem&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.commentPhoto, commentPhoto) || other.commentPhoto == commentPhoto)&&(identical(other.commentVideo, commentVideo) || other.commentVideo == commentVideo)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.name, name) || other.name == name)&&(identical(other.personGuid, personGuid) || other.personGuid == personGuid)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.pageName, pageName) || other.pageName == pageName)&&(identical(other.pageGuid, pageGuid) || other.pageGuid == pageGuid)&&(identical(other.pageProfilePhoto, pageProfilePhoto) || other.pageProfilePhoto == pageProfilePhoto)&&(identical(other.reactionCount, reactionCount) || other.reactionCount == reactionCount)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.postVideoGuid, postVideoGuid) || other.postVideoGuid == postVideoGuid)&&(identical(other.postPhotoGuid, postPhotoGuid) || other.postPhotoGuid == postPhotoGuid)&&(identical(other.loginUserReaction, loginUserReaction) || other.loginUserReaction == loginUserReaction)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded)&&(identical(other.isLoadingReplies, isLoadingReplies) || other.isLoadingReplies == isLoadingReplies)&&(identical(other.hasMoreReplies, hasMoreReplies) || other.hasMoreReplies == hasMoreReplies)&&(identical(other.lastReplyCursor, lastReplyCursor) || other.lastReplyCursor == lastReplyCursor)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,guid,commentText,commentPhoto,commentVideo,createdOn,name,personGuid,photo,pageName,pageGuid,pageProfilePhoto,reactionCount,replyCount,postVideoGuid,postPhotoGuid,loginUserReaction,const DeepCollectionEquality().hash(replies),isExpanded,isLoadingReplies,hasMoreReplies,lastReplyCursor,isSubmitting]);

@override
String toString() {
  return 'CommentItem(guid: $guid, commentText: $commentText, commentPhoto: $commentPhoto, commentVideo: $commentVideo, createdOn: $createdOn, name: $name, personGuid: $personGuid, photo: $photo, pageName: $pageName, pageGuid: $pageGuid, pageProfilePhoto: $pageProfilePhoto, reactionCount: $reactionCount, replyCount: $replyCount, postVideoGuid: $postVideoGuid, postPhotoGuid: $postPhotoGuid, loginUserReaction: $loginUserReaction, replies: $replies, isExpanded: $isExpanded, isLoadingReplies: $isLoadingReplies, hasMoreReplies: $hasMoreReplies, lastReplyCursor: $lastReplyCursor, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class $CommentItemCopyWith<$Res>  {
  factory $CommentItemCopyWith(CommentItem value, $Res Function(CommentItem) _then) = _$CommentItemCopyWithImpl;
@useResult
$Res call({
 String guid, String? commentText, String? commentPhoto, String? commentVideo, String? createdOn, String name, String personGuid, String? photo, String? pageName, String? pageGuid, String? pageProfilePhoto, int reactionCount, int replyCount, String? postVideoGuid, String? postPhotoGuid, String? loginUserReaction, List<ReplyItem> replies, bool isExpanded, bool isLoadingReplies, bool hasMoreReplies, String? lastReplyCursor, bool isSubmitting
});




}
/// @nodoc
class _$CommentItemCopyWithImpl<$Res>
    implements $CommentItemCopyWith<$Res> {
  _$CommentItemCopyWithImpl(this._self, this._then);

  final CommentItem _self;
  final $Res Function(CommentItem) _then;

/// Create a copy of CommentItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guid = null,Object? commentText = freezed,Object? commentPhoto = freezed,Object? commentVideo = freezed,Object? createdOn = freezed,Object? name = null,Object? personGuid = null,Object? photo = freezed,Object? pageName = freezed,Object? pageGuid = freezed,Object? pageProfilePhoto = freezed,Object? reactionCount = null,Object? replyCount = null,Object? postVideoGuid = freezed,Object? postPhotoGuid = freezed,Object? loginUserReaction = freezed,Object? replies = null,Object? isExpanded = null,Object? isLoadingReplies = null,Object? hasMoreReplies = null,Object? lastReplyCursor = freezed,Object? isSubmitting = null,}) {
  return _then(_self.copyWith(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,commentText: freezed == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String?,commentPhoto: freezed == commentPhoto ? _self.commentPhoto : commentPhoto // ignore: cast_nullable_to_non_nullable
as String?,commentVideo: freezed == commentVideo ? _self.commentVideo : commentVideo // ignore: cast_nullable_to_non_nullable
as String?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personGuid: null == personGuid ? _self.personGuid : personGuid // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,pageName: freezed == pageName ? _self.pageName : pageName // ignore: cast_nullable_to_non_nullable
as String?,pageGuid: freezed == pageGuid ? _self.pageGuid : pageGuid // ignore: cast_nullable_to_non_nullable
as String?,pageProfilePhoto: freezed == pageProfilePhoto ? _self.pageProfilePhoto : pageProfilePhoto // ignore: cast_nullable_to_non_nullable
as String?,reactionCount: null == reactionCount ? _self.reactionCount : reactionCount // ignore: cast_nullable_to_non_nullable
as int,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,postVideoGuid: freezed == postVideoGuid ? _self.postVideoGuid : postVideoGuid // ignore: cast_nullable_to_non_nullable
as String?,postPhotoGuid: freezed == postPhotoGuid ? _self.postPhotoGuid : postPhotoGuid // ignore: cast_nullable_to_non_nullable
as String?,loginUserReaction: freezed == loginUserReaction ? _self.loginUserReaction : loginUserReaction // ignore: cast_nullable_to_non_nullable
as String?,replies: null == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReplyItem>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,isLoadingReplies: null == isLoadingReplies ? _self.isLoadingReplies : isLoadingReplies // ignore: cast_nullable_to_non_nullable
as bool,hasMoreReplies: null == hasMoreReplies ? _self.hasMoreReplies : hasMoreReplies // ignore: cast_nullable_to_non_nullable
as bool,lastReplyCursor: freezed == lastReplyCursor ? _self.lastReplyCursor : lastReplyCursor // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentItem].
extension CommentItemPatterns on CommentItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentItem value)  $default,){
final _that = this;
switch (_that) {
case _CommentItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentItem value)?  $default,){
final _that = this;
switch (_that) {
case _CommentItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String guid,  String? commentText,  String? commentPhoto,  String? commentVideo,  String? createdOn,  String name,  String personGuid,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  int reactionCount,  int replyCount,  String? postVideoGuid,  String? postPhotoGuid,  String? loginUserReaction,  List<ReplyItem> replies,  bool isExpanded,  bool isLoadingReplies,  bool hasMoreReplies,  String? lastReplyCursor,  bool isSubmitting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentItem() when $default != null:
return $default(_that.guid,_that.commentText,_that.commentPhoto,_that.commentVideo,_that.createdOn,_that.name,_that.personGuid,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.reactionCount,_that.replyCount,_that.postVideoGuid,_that.postPhotoGuid,_that.loginUserReaction,_that.replies,_that.isExpanded,_that.isLoadingReplies,_that.hasMoreReplies,_that.lastReplyCursor,_that.isSubmitting);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String guid,  String? commentText,  String? commentPhoto,  String? commentVideo,  String? createdOn,  String name,  String personGuid,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  int reactionCount,  int replyCount,  String? postVideoGuid,  String? postPhotoGuid,  String? loginUserReaction,  List<ReplyItem> replies,  bool isExpanded,  bool isLoadingReplies,  bool hasMoreReplies,  String? lastReplyCursor,  bool isSubmitting)  $default,) {final _that = this;
switch (_that) {
case _CommentItem():
return $default(_that.guid,_that.commentText,_that.commentPhoto,_that.commentVideo,_that.createdOn,_that.name,_that.personGuid,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.reactionCount,_that.replyCount,_that.postVideoGuid,_that.postPhotoGuid,_that.loginUserReaction,_that.replies,_that.isExpanded,_that.isLoadingReplies,_that.hasMoreReplies,_that.lastReplyCursor,_that.isSubmitting);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String guid,  String? commentText,  String? commentPhoto,  String? commentVideo,  String? createdOn,  String name,  String personGuid,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  int reactionCount,  int replyCount,  String? postVideoGuid,  String? postPhotoGuid,  String? loginUserReaction,  List<ReplyItem> replies,  bool isExpanded,  bool isLoadingReplies,  bool hasMoreReplies,  String? lastReplyCursor,  bool isSubmitting)?  $default,) {final _that = this;
switch (_that) {
case _CommentItem() when $default != null:
return $default(_that.guid,_that.commentText,_that.commentPhoto,_that.commentVideo,_that.createdOn,_that.name,_that.personGuid,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.reactionCount,_that.replyCount,_that.postVideoGuid,_that.postPhotoGuid,_that.loginUserReaction,_that.replies,_that.isExpanded,_that.isLoadingReplies,_that.hasMoreReplies,_that.lastReplyCursor,_that.isSubmitting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentItem implements CommentItem {
  const _CommentItem({required this.guid, this.commentText, this.commentPhoto, this.commentVideo, this.createdOn, required this.name, required this.personGuid, this.photo, this.pageName, this.pageGuid, this.pageProfilePhoto, this.reactionCount = 0, this.replyCount = 0, this.postVideoGuid, this.postPhotoGuid, this.loginUserReaction, final  List<ReplyItem> replies = const [], this.isExpanded = false, this.isLoadingReplies = false, this.hasMoreReplies = false, this.lastReplyCursor, this.isSubmitting = false}): _replies = replies;
  factory _CommentItem.fromJson(Map<String, dynamic> json) => _$CommentItemFromJson(json);

@override final  String guid;
@override final  String? commentText;
@override final  String? commentPhoto;
@override final  String? commentVideo;
@override final  String? createdOn;
@override final  String name;
@override final  String personGuid;
@override final  String? photo;
@override final  String? pageName;
@override final  String? pageGuid;
@override final  String? pageProfilePhoto;
@override@JsonKey() final  int reactionCount;
@override@JsonKey() final  int replyCount;
@override final  String? postVideoGuid;
@override final  String? postPhotoGuid;
@override final  String? loginUserReaction;
 final  List<ReplyItem> _replies;
@override@JsonKey() List<ReplyItem> get replies {
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_replies);
}

@override@JsonKey() final  bool isExpanded;
@override@JsonKey() final  bool isLoadingReplies;
@override@JsonKey() final  bool hasMoreReplies;
@override final  String? lastReplyCursor;
@override@JsonKey() final  bool isSubmitting;

/// Create a copy of CommentItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentItemCopyWith<_CommentItem> get copyWith => __$CommentItemCopyWithImpl<_CommentItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentItem&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.commentPhoto, commentPhoto) || other.commentPhoto == commentPhoto)&&(identical(other.commentVideo, commentVideo) || other.commentVideo == commentVideo)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.name, name) || other.name == name)&&(identical(other.personGuid, personGuid) || other.personGuid == personGuid)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.pageName, pageName) || other.pageName == pageName)&&(identical(other.pageGuid, pageGuid) || other.pageGuid == pageGuid)&&(identical(other.pageProfilePhoto, pageProfilePhoto) || other.pageProfilePhoto == pageProfilePhoto)&&(identical(other.reactionCount, reactionCount) || other.reactionCount == reactionCount)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.postVideoGuid, postVideoGuid) || other.postVideoGuid == postVideoGuid)&&(identical(other.postPhotoGuid, postPhotoGuid) || other.postPhotoGuid == postPhotoGuid)&&(identical(other.loginUserReaction, loginUserReaction) || other.loginUserReaction == loginUserReaction)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded)&&(identical(other.isLoadingReplies, isLoadingReplies) || other.isLoadingReplies == isLoadingReplies)&&(identical(other.hasMoreReplies, hasMoreReplies) || other.hasMoreReplies == hasMoreReplies)&&(identical(other.lastReplyCursor, lastReplyCursor) || other.lastReplyCursor == lastReplyCursor)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,guid,commentText,commentPhoto,commentVideo,createdOn,name,personGuid,photo,pageName,pageGuid,pageProfilePhoto,reactionCount,replyCount,postVideoGuid,postPhotoGuid,loginUserReaction,const DeepCollectionEquality().hash(_replies),isExpanded,isLoadingReplies,hasMoreReplies,lastReplyCursor,isSubmitting]);

@override
String toString() {
  return 'CommentItem(guid: $guid, commentText: $commentText, commentPhoto: $commentPhoto, commentVideo: $commentVideo, createdOn: $createdOn, name: $name, personGuid: $personGuid, photo: $photo, pageName: $pageName, pageGuid: $pageGuid, pageProfilePhoto: $pageProfilePhoto, reactionCount: $reactionCount, replyCount: $replyCount, postVideoGuid: $postVideoGuid, postPhotoGuid: $postPhotoGuid, loginUserReaction: $loginUserReaction, replies: $replies, isExpanded: $isExpanded, isLoadingReplies: $isLoadingReplies, hasMoreReplies: $hasMoreReplies, lastReplyCursor: $lastReplyCursor, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class _$CommentItemCopyWith<$Res> implements $CommentItemCopyWith<$Res> {
  factory _$CommentItemCopyWith(_CommentItem value, $Res Function(_CommentItem) _then) = __$CommentItemCopyWithImpl;
@override @useResult
$Res call({
 String guid, String? commentText, String? commentPhoto, String? commentVideo, String? createdOn, String name, String personGuid, String? photo, String? pageName, String? pageGuid, String? pageProfilePhoto, int reactionCount, int replyCount, String? postVideoGuid, String? postPhotoGuid, String? loginUserReaction, List<ReplyItem> replies, bool isExpanded, bool isLoadingReplies, bool hasMoreReplies, String? lastReplyCursor, bool isSubmitting
});




}
/// @nodoc
class __$CommentItemCopyWithImpl<$Res>
    implements _$CommentItemCopyWith<$Res> {
  __$CommentItemCopyWithImpl(this._self, this._then);

  final _CommentItem _self;
  final $Res Function(_CommentItem) _then;

/// Create a copy of CommentItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guid = null,Object? commentText = freezed,Object? commentPhoto = freezed,Object? commentVideo = freezed,Object? createdOn = freezed,Object? name = null,Object? personGuid = null,Object? photo = freezed,Object? pageName = freezed,Object? pageGuid = freezed,Object? pageProfilePhoto = freezed,Object? reactionCount = null,Object? replyCount = null,Object? postVideoGuid = freezed,Object? postPhotoGuid = freezed,Object? loginUserReaction = freezed,Object? replies = null,Object? isExpanded = null,Object? isLoadingReplies = null,Object? hasMoreReplies = null,Object? lastReplyCursor = freezed,Object? isSubmitting = null,}) {
  return _then(_CommentItem(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,commentText: freezed == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String?,commentPhoto: freezed == commentPhoto ? _self.commentPhoto : commentPhoto // ignore: cast_nullable_to_non_nullable
as String?,commentVideo: freezed == commentVideo ? _self.commentVideo : commentVideo // ignore: cast_nullable_to_non_nullable
as String?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personGuid: null == personGuid ? _self.personGuid : personGuid // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,pageName: freezed == pageName ? _self.pageName : pageName // ignore: cast_nullable_to_non_nullable
as String?,pageGuid: freezed == pageGuid ? _self.pageGuid : pageGuid // ignore: cast_nullable_to_non_nullable
as String?,pageProfilePhoto: freezed == pageProfilePhoto ? _self.pageProfilePhoto : pageProfilePhoto // ignore: cast_nullable_to_non_nullable
as String?,reactionCount: null == reactionCount ? _self.reactionCount : reactionCount // ignore: cast_nullable_to_non_nullable
as int,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,postVideoGuid: freezed == postVideoGuid ? _self.postVideoGuid : postVideoGuid // ignore: cast_nullable_to_non_nullable
as String?,postPhotoGuid: freezed == postPhotoGuid ? _self.postPhotoGuid : postPhotoGuid // ignore: cast_nullable_to_non_nullable
as String?,loginUserReaction: freezed == loginUserReaction ? _self.loginUserReaction : loginUserReaction // ignore: cast_nullable_to_non_nullable
as String?,replies: null == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReplyItem>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,isLoadingReplies: null == isLoadingReplies ? _self.isLoadingReplies : isLoadingReplies // ignore: cast_nullable_to_non_nullable
as bool,hasMoreReplies: null == hasMoreReplies ? _self.hasMoreReplies : hasMoreReplies // ignore: cast_nullable_to_non_nullable
as bool,lastReplyCursor: freezed == lastReplyCursor ? _self.lastReplyCursor : lastReplyCursor // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReplyItem {

 String get guid; String get commentGuid; String? get replyComment; String? get replyCommentPhoto; String? get replyCommentVideo; String? get replyCreatedOn; String get name; String get personGuid; int get replyCount; int get reactionCount; String? get photo; String? get pageName; String? get pageGuid; String? get pageProfilePhoto; String? get loginUserReaction; List<NestedReplyItem> get nestedReplies; bool get isExpanded; bool get isLoadingNestedReplies; bool get hasMoreNestedReplies; String? get lastNestedReplyCursor; bool get isSubmitting;
/// Create a copy of ReplyItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReplyItemCopyWith<ReplyItem> get copyWith => _$ReplyItemCopyWithImpl<ReplyItem>(this as ReplyItem, _$identity);

  /// Serializes this ReplyItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReplyItem&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.commentGuid, commentGuid) || other.commentGuid == commentGuid)&&(identical(other.replyComment, replyComment) || other.replyComment == replyComment)&&(identical(other.replyCommentPhoto, replyCommentPhoto) || other.replyCommentPhoto == replyCommentPhoto)&&(identical(other.replyCommentVideo, replyCommentVideo) || other.replyCommentVideo == replyCommentVideo)&&(identical(other.replyCreatedOn, replyCreatedOn) || other.replyCreatedOn == replyCreatedOn)&&(identical(other.name, name) || other.name == name)&&(identical(other.personGuid, personGuid) || other.personGuid == personGuid)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.reactionCount, reactionCount) || other.reactionCount == reactionCount)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.pageName, pageName) || other.pageName == pageName)&&(identical(other.pageGuid, pageGuid) || other.pageGuid == pageGuid)&&(identical(other.pageProfilePhoto, pageProfilePhoto) || other.pageProfilePhoto == pageProfilePhoto)&&(identical(other.loginUserReaction, loginUserReaction) || other.loginUserReaction == loginUserReaction)&&const DeepCollectionEquality().equals(other.nestedReplies, nestedReplies)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded)&&(identical(other.isLoadingNestedReplies, isLoadingNestedReplies) || other.isLoadingNestedReplies == isLoadingNestedReplies)&&(identical(other.hasMoreNestedReplies, hasMoreNestedReplies) || other.hasMoreNestedReplies == hasMoreNestedReplies)&&(identical(other.lastNestedReplyCursor, lastNestedReplyCursor) || other.lastNestedReplyCursor == lastNestedReplyCursor)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,guid,commentGuid,replyComment,replyCommentPhoto,replyCommentVideo,replyCreatedOn,name,personGuid,replyCount,reactionCount,photo,pageName,pageGuid,pageProfilePhoto,loginUserReaction,const DeepCollectionEquality().hash(nestedReplies),isExpanded,isLoadingNestedReplies,hasMoreNestedReplies,lastNestedReplyCursor,isSubmitting]);

@override
String toString() {
  return 'ReplyItem(guid: $guid, commentGuid: $commentGuid, replyComment: $replyComment, replyCommentPhoto: $replyCommentPhoto, replyCommentVideo: $replyCommentVideo, replyCreatedOn: $replyCreatedOn, name: $name, personGuid: $personGuid, replyCount: $replyCount, reactionCount: $reactionCount, photo: $photo, pageName: $pageName, pageGuid: $pageGuid, pageProfilePhoto: $pageProfilePhoto, loginUserReaction: $loginUserReaction, nestedReplies: $nestedReplies, isExpanded: $isExpanded, isLoadingNestedReplies: $isLoadingNestedReplies, hasMoreNestedReplies: $hasMoreNestedReplies, lastNestedReplyCursor: $lastNestedReplyCursor, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class $ReplyItemCopyWith<$Res>  {
  factory $ReplyItemCopyWith(ReplyItem value, $Res Function(ReplyItem) _then) = _$ReplyItemCopyWithImpl;
@useResult
$Res call({
 String guid, String commentGuid, String? replyComment, String? replyCommentPhoto, String? replyCommentVideo, String? replyCreatedOn, String name, String personGuid, int replyCount, int reactionCount, String? photo, String? pageName, String? pageGuid, String? pageProfilePhoto, String? loginUserReaction, List<NestedReplyItem> nestedReplies, bool isExpanded, bool isLoadingNestedReplies, bool hasMoreNestedReplies, String? lastNestedReplyCursor, bool isSubmitting
});




}
/// @nodoc
class _$ReplyItemCopyWithImpl<$Res>
    implements $ReplyItemCopyWith<$Res> {
  _$ReplyItemCopyWithImpl(this._self, this._then);

  final ReplyItem _self;
  final $Res Function(ReplyItem) _then;

/// Create a copy of ReplyItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guid = null,Object? commentGuid = null,Object? replyComment = freezed,Object? replyCommentPhoto = freezed,Object? replyCommentVideo = freezed,Object? replyCreatedOn = freezed,Object? name = null,Object? personGuid = null,Object? replyCount = null,Object? reactionCount = null,Object? photo = freezed,Object? pageName = freezed,Object? pageGuid = freezed,Object? pageProfilePhoto = freezed,Object? loginUserReaction = freezed,Object? nestedReplies = null,Object? isExpanded = null,Object? isLoadingNestedReplies = null,Object? hasMoreNestedReplies = null,Object? lastNestedReplyCursor = freezed,Object? isSubmitting = null,}) {
  return _then(_self.copyWith(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,commentGuid: null == commentGuid ? _self.commentGuid : commentGuid // ignore: cast_nullable_to_non_nullable
as String,replyComment: freezed == replyComment ? _self.replyComment : replyComment // ignore: cast_nullable_to_non_nullable
as String?,replyCommentPhoto: freezed == replyCommentPhoto ? _self.replyCommentPhoto : replyCommentPhoto // ignore: cast_nullable_to_non_nullable
as String?,replyCommentVideo: freezed == replyCommentVideo ? _self.replyCommentVideo : replyCommentVideo // ignore: cast_nullable_to_non_nullable
as String?,replyCreatedOn: freezed == replyCreatedOn ? _self.replyCreatedOn : replyCreatedOn // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personGuid: null == personGuid ? _self.personGuid : personGuid // ignore: cast_nullable_to_non_nullable
as String,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,reactionCount: null == reactionCount ? _self.reactionCount : reactionCount // ignore: cast_nullable_to_non_nullable
as int,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,pageName: freezed == pageName ? _self.pageName : pageName // ignore: cast_nullable_to_non_nullable
as String?,pageGuid: freezed == pageGuid ? _self.pageGuid : pageGuid // ignore: cast_nullable_to_non_nullable
as String?,pageProfilePhoto: freezed == pageProfilePhoto ? _self.pageProfilePhoto : pageProfilePhoto // ignore: cast_nullable_to_non_nullable
as String?,loginUserReaction: freezed == loginUserReaction ? _self.loginUserReaction : loginUserReaction // ignore: cast_nullable_to_non_nullable
as String?,nestedReplies: null == nestedReplies ? _self.nestedReplies : nestedReplies // ignore: cast_nullable_to_non_nullable
as List<NestedReplyItem>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNestedReplies: null == isLoadingNestedReplies ? _self.isLoadingNestedReplies : isLoadingNestedReplies // ignore: cast_nullable_to_non_nullable
as bool,hasMoreNestedReplies: null == hasMoreNestedReplies ? _self.hasMoreNestedReplies : hasMoreNestedReplies // ignore: cast_nullable_to_non_nullable
as bool,lastNestedReplyCursor: freezed == lastNestedReplyCursor ? _self.lastNestedReplyCursor : lastNestedReplyCursor // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReplyItem].
extension ReplyItemPatterns on ReplyItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReplyItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReplyItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReplyItem value)  $default,){
final _that = this;
switch (_that) {
case _ReplyItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReplyItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReplyItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String guid,  String commentGuid,  String? replyComment,  String? replyCommentPhoto,  String? replyCommentVideo,  String? replyCreatedOn,  String name,  String personGuid,  int replyCount,  int reactionCount,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  String? loginUserReaction,  List<NestedReplyItem> nestedReplies,  bool isExpanded,  bool isLoadingNestedReplies,  bool hasMoreNestedReplies,  String? lastNestedReplyCursor,  bool isSubmitting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReplyItem() when $default != null:
return $default(_that.guid,_that.commentGuid,_that.replyComment,_that.replyCommentPhoto,_that.replyCommentVideo,_that.replyCreatedOn,_that.name,_that.personGuid,_that.replyCount,_that.reactionCount,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.loginUserReaction,_that.nestedReplies,_that.isExpanded,_that.isLoadingNestedReplies,_that.hasMoreNestedReplies,_that.lastNestedReplyCursor,_that.isSubmitting);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String guid,  String commentGuid,  String? replyComment,  String? replyCommentPhoto,  String? replyCommentVideo,  String? replyCreatedOn,  String name,  String personGuid,  int replyCount,  int reactionCount,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  String? loginUserReaction,  List<NestedReplyItem> nestedReplies,  bool isExpanded,  bool isLoadingNestedReplies,  bool hasMoreNestedReplies,  String? lastNestedReplyCursor,  bool isSubmitting)  $default,) {final _that = this;
switch (_that) {
case _ReplyItem():
return $default(_that.guid,_that.commentGuid,_that.replyComment,_that.replyCommentPhoto,_that.replyCommentVideo,_that.replyCreatedOn,_that.name,_that.personGuid,_that.replyCount,_that.reactionCount,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.loginUserReaction,_that.nestedReplies,_that.isExpanded,_that.isLoadingNestedReplies,_that.hasMoreNestedReplies,_that.lastNestedReplyCursor,_that.isSubmitting);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String guid,  String commentGuid,  String? replyComment,  String? replyCommentPhoto,  String? replyCommentVideo,  String? replyCreatedOn,  String name,  String personGuid,  int replyCount,  int reactionCount,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  String? loginUserReaction,  List<NestedReplyItem> nestedReplies,  bool isExpanded,  bool isLoadingNestedReplies,  bool hasMoreNestedReplies,  String? lastNestedReplyCursor,  bool isSubmitting)?  $default,) {final _that = this;
switch (_that) {
case _ReplyItem() when $default != null:
return $default(_that.guid,_that.commentGuid,_that.replyComment,_that.replyCommentPhoto,_that.replyCommentVideo,_that.replyCreatedOn,_that.name,_that.personGuid,_that.replyCount,_that.reactionCount,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.loginUserReaction,_that.nestedReplies,_that.isExpanded,_that.isLoadingNestedReplies,_that.hasMoreNestedReplies,_that.lastNestedReplyCursor,_that.isSubmitting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReplyItem implements ReplyItem {
  const _ReplyItem({required this.guid, required this.commentGuid, this.replyComment, this.replyCommentPhoto, this.replyCommentVideo, this.replyCreatedOn, required this.name, required this.personGuid, this.replyCount = 0, this.reactionCount = 0, this.photo, this.pageName, this.pageGuid, this.pageProfilePhoto, this.loginUserReaction, final  List<NestedReplyItem> nestedReplies = const [], this.isExpanded = false, this.isLoadingNestedReplies = false, this.hasMoreNestedReplies = false, this.lastNestedReplyCursor, this.isSubmitting = false}): _nestedReplies = nestedReplies;
  factory _ReplyItem.fromJson(Map<String, dynamic> json) => _$ReplyItemFromJson(json);

@override final  String guid;
@override final  String commentGuid;
@override final  String? replyComment;
@override final  String? replyCommentPhoto;
@override final  String? replyCommentVideo;
@override final  String? replyCreatedOn;
@override final  String name;
@override final  String personGuid;
@override@JsonKey() final  int replyCount;
@override@JsonKey() final  int reactionCount;
@override final  String? photo;
@override final  String? pageName;
@override final  String? pageGuid;
@override final  String? pageProfilePhoto;
@override final  String? loginUserReaction;
 final  List<NestedReplyItem> _nestedReplies;
@override@JsonKey() List<NestedReplyItem> get nestedReplies {
  if (_nestedReplies is EqualUnmodifiableListView) return _nestedReplies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nestedReplies);
}

@override@JsonKey() final  bool isExpanded;
@override@JsonKey() final  bool isLoadingNestedReplies;
@override@JsonKey() final  bool hasMoreNestedReplies;
@override final  String? lastNestedReplyCursor;
@override@JsonKey() final  bool isSubmitting;

/// Create a copy of ReplyItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReplyItemCopyWith<_ReplyItem> get copyWith => __$ReplyItemCopyWithImpl<_ReplyItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReplyItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReplyItem&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.commentGuid, commentGuid) || other.commentGuid == commentGuid)&&(identical(other.replyComment, replyComment) || other.replyComment == replyComment)&&(identical(other.replyCommentPhoto, replyCommentPhoto) || other.replyCommentPhoto == replyCommentPhoto)&&(identical(other.replyCommentVideo, replyCommentVideo) || other.replyCommentVideo == replyCommentVideo)&&(identical(other.replyCreatedOn, replyCreatedOn) || other.replyCreatedOn == replyCreatedOn)&&(identical(other.name, name) || other.name == name)&&(identical(other.personGuid, personGuid) || other.personGuid == personGuid)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.reactionCount, reactionCount) || other.reactionCount == reactionCount)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.pageName, pageName) || other.pageName == pageName)&&(identical(other.pageGuid, pageGuid) || other.pageGuid == pageGuid)&&(identical(other.pageProfilePhoto, pageProfilePhoto) || other.pageProfilePhoto == pageProfilePhoto)&&(identical(other.loginUserReaction, loginUserReaction) || other.loginUserReaction == loginUserReaction)&&const DeepCollectionEquality().equals(other._nestedReplies, _nestedReplies)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded)&&(identical(other.isLoadingNestedReplies, isLoadingNestedReplies) || other.isLoadingNestedReplies == isLoadingNestedReplies)&&(identical(other.hasMoreNestedReplies, hasMoreNestedReplies) || other.hasMoreNestedReplies == hasMoreNestedReplies)&&(identical(other.lastNestedReplyCursor, lastNestedReplyCursor) || other.lastNestedReplyCursor == lastNestedReplyCursor)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,guid,commentGuid,replyComment,replyCommentPhoto,replyCommentVideo,replyCreatedOn,name,personGuid,replyCount,reactionCount,photo,pageName,pageGuid,pageProfilePhoto,loginUserReaction,const DeepCollectionEquality().hash(_nestedReplies),isExpanded,isLoadingNestedReplies,hasMoreNestedReplies,lastNestedReplyCursor,isSubmitting]);

@override
String toString() {
  return 'ReplyItem(guid: $guid, commentGuid: $commentGuid, replyComment: $replyComment, replyCommentPhoto: $replyCommentPhoto, replyCommentVideo: $replyCommentVideo, replyCreatedOn: $replyCreatedOn, name: $name, personGuid: $personGuid, replyCount: $replyCount, reactionCount: $reactionCount, photo: $photo, pageName: $pageName, pageGuid: $pageGuid, pageProfilePhoto: $pageProfilePhoto, loginUserReaction: $loginUserReaction, nestedReplies: $nestedReplies, isExpanded: $isExpanded, isLoadingNestedReplies: $isLoadingNestedReplies, hasMoreNestedReplies: $hasMoreNestedReplies, lastNestedReplyCursor: $lastNestedReplyCursor, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class _$ReplyItemCopyWith<$Res> implements $ReplyItemCopyWith<$Res> {
  factory _$ReplyItemCopyWith(_ReplyItem value, $Res Function(_ReplyItem) _then) = __$ReplyItemCopyWithImpl;
@override @useResult
$Res call({
 String guid, String commentGuid, String? replyComment, String? replyCommentPhoto, String? replyCommentVideo, String? replyCreatedOn, String name, String personGuid, int replyCount, int reactionCount, String? photo, String? pageName, String? pageGuid, String? pageProfilePhoto, String? loginUserReaction, List<NestedReplyItem> nestedReplies, bool isExpanded, bool isLoadingNestedReplies, bool hasMoreNestedReplies, String? lastNestedReplyCursor, bool isSubmitting
});




}
/// @nodoc
class __$ReplyItemCopyWithImpl<$Res>
    implements _$ReplyItemCopyWith<$Res> {
  __$ReplyItemCopyWithImpl(this._self, this._then);

  final _ReplyItem _self;
  final $Res Function(_ReplyItem) _then;

/// Create a copy of ReplyItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guid = null,Object? commentGuid = null,Object? replyComment = freezed,Object? replyCommentPhoto = freezed,Object? replyCommentVideo = freezed,Object? replyCreatedOn = freezed,Object? name = null,Object? personGuid = null,Object? replyCount = null,Object? reactionCount = null,Object? photo = freezed,Object? pageName = freezed,Object? pageGuid = freezed,Object? pageProfilePhoto = freezed,Object? loginUserReaction = freezed,Object? nestedReplies = null,Object? isExpanded = null,Object? isLoadingNestedReplies = null,Object? hasMoreNestedReplies = null,Object? lastNestedReplyCursor = freezed,Object? isSubmitting = null,}) {
  return _then(_ReplyItem(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,commentGuid: null == commentGuid ? _self.commentGuid : commentGuid // ignore: cast_nullable_to_non_nullable
as String,replyComment: freezed == replyComment ? _self.replyComment : replyComment // ignore: cast_nullable_to_non_nullable
as String?,replyCommentPhoto: freezed == replyCommentPhoto ? _self.replyCommentPhoto : replyCommentPhoto // ignore: cast_nullable_to_non_nullable
as String?,replyCommentVideo: freezed == replyCommentVideo ? _self.replyCommentVideo : replyCommentVideo // ignore: cast_nullable_to_non_nullable
as String?,replyCreatedOn: freezed == replyCreatedOn ? _self.replyCreatedOn : replyCreatedOn // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personGuid: null == personGuid ? _self.personGuid : personGuid // ignore: cast_nullable_to_non_nullable
as String,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,reactionCount: null == reactionCount ? _self.reactionCount : reactionCount // ignore: cast_nullable_to_non_nullable
as int,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,pageName: freezed == pageName ? _self.pageName : pageName // ignore: cast_nullable_to_non_nullable
as String?,pageGuid: freezed == pageGuid ? _self.pageGuid : pageGuid // ignore: cast_nullable_to_non_nullable
as String?,pageProfilePhoto: freezed == pageProfilePhoto ? _self.pageProfilePhoto : pageProfilePhoto // ignore: cast_nullable_to_non_nullable
as String?,loginUserReaction: freezed == loginUserReaction ? _self.loginUserReaction : loginUserReaction // ignore: cast_nullable_to_non_nullable
as String?,nestedReplies: null == nestedReplies ? _self._nestedReplies : nestedReplies // ignore: cast_nullable_to_non_nullable
as List<NestedReplyItem>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNestedReplies: null == isLoadingNestedReplies ? _self.isLoadingNestedReplies : isLoadingNestedReplies // ignore: cast_nullable_to_non_nullable
as bool,hasMoreNestedReplies: null == hasMoreNestedReplies ? _self.hasMoreNestedReplies : hasMoreNestedReplies // ignore: cast_nullable_to_non_nullable
as bool,lastNestedReplyCursor: freezed == lastNestedReplyCursor ? _self.lastNestedReplyCursor : lastNestedReplyCursor // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$NestedReplyItem {

 String get guid; String? get replyComment; String? get replyCommentPhoto; String? get replyCommentVideo; String? get replyCreatedOn; String get name; String get personGuid; int get reactionCount; String? get photo; String? get pageName; String? get pageGuid; String? get pageProfilePhoto; String? get loginUserReaction;
/// Create a copy of NestedReplyItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NestedReplyItemCopyWith<NestedReplyItem> get copyWith => _$NestedReplyItemCopyWithImpl<NestedReplyItem>(this as NestedReplyItem, _$identity);

  /// Serializes this NestedReplyItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NestedReplyItem&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.replyComment, replyComment) || other.replyComment == replyComment)&&(identical(other.replyCommentPhoto, replyCommentPhoto) || other.replyCommentPhoto == replyCommentPhoto)&&(identical(other.replyCommentVideo, replyCommentVideo) || other.replyCommentVideo == replyCommentVideo)&&(identical(other.replyCreatedOn, replyCreatedOn) || other.replyCreatedOn == replyCreatedOn)&&(identical(other.name, name) || other.name == name)&&(identical(other.personGuid, personGuid) || other.personGuid == personGuid)&&(identical(other.reactionCount, reactionCount) || other.reactionCount == reactionCount)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.pageName, pageName) || other.pageName == pageName)&&(identical(other.pageGuid, pageGuid) || other.pageGuid == pageGuid)&&(identical(other.pageProfilePhoto, pageProfilePhoto) || other.pageProfilePhoto == pageProfilePhoto)&&(identical(other.loginUserReaction, loginUserReaction) || other.loginUserReaction == loginUserReaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guid,replyComment,replyCommentPhoto,replyCommentVideo,replyCreatedOn,name,personGuid,reactionCount,photo,pageName,pageGuid,pageProfilePhoto,loginUserReaction);

@override
String toString() {
  return 'NestedReplyItem(guid: $guid, replyComment: $replyComment, replyCommentPhoto: $replyCommentPhoto, replyCommentVideo: $replyCommentVideo, replyCreatedOn: $replyCreatedOn, name: $name, personGuid: $personGuid, reactionCount: $reactionCount, photo: $photo, pageName: $pageName, pageGuid: $pageGuid, pageProfilePhoto: $pageProfilePhoto, loginUserReaction: $loginUserReaction)';
}


}

/// @nodoc
abstract mixin class $NestedReplyItemCopyWith<$Res>  {
  factory $NestedReplyItemCopyWith(NestedReplyItem value, $Res Function(NestedReplyItem) _then) = _$NestedReplyItemCopyWithImpl;
@useResult
$Res call({
 String guid, String? replyComment, String? replyCommentPhoto, String? replyCommentVideo, String? replyCreatedOn, String name, String personGuid, int reactionCount, String? photo, String? pageName, String? pageGuid, String? pageProfilePhoto, String? loginUserReaction
});




}
/// @nodoc
class _$NestedReplyItemCopyWithImpl<$Res>
    implements $NestedReplyItemCopyWith<$Res> {
  _$NestedReplyItemCopyWithImpl(this._self, this._then);

  final NestedReplyItem _self;
  final $Res Function(NestedReplyItem) _then;

/// Create a copy of NestedReplyItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guid = null,Object? replyComment = freezed,Object? replyCommentPhoto = freezed,Object? replyCommentVideo = freezed,Object? replyCreatedOn = freezed,Object? name = null,Object? personGuid = null,Object? reactionCount = null,Object? photo = freezed,Object? pageName = freezed,Object? pageGuid = freezed,Object? pageProfilePhoto = freezed,Object? loginUserReaction = freezed,}) {
  return _then(_self.copyWith(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,replyComment: freezed == replyComment ? _self.replyComment : replyComment // ignore: cast_nullable_to_non_nullable
as String?,replyCommentPhoto: freezed == replyCommentPhoto ? _self.replyCommentPhoto : replyCommentPhoto // ignore: cast_nullable_to_non_nullable
as String?,replyCommentVideo: freezed == replyCommentVideo ? _self.replyCommentVideo : replyCommentVideo // ignore: cast_nullable_to_non_nullable
as String?,replyCreatedOn: freezed == replyCreatedOn ? _self.replyCreatedOn : replyCreatedOn // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personGuid: null == personGuid ? _self.personGuid : personGuid // ignore: cast_nullable_to_non_nullable
as String,reactionCount: null == reactionCount ? _self.reactionCount : reactionCount // ignore: cast_nullable_to_non_nullable
as int,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,pageName: freezed == pageName ? _self.pageName : pageName // ignore: cast_nullable_to_non_nullable
as String?,pageGuid: freezed == pageGuid ? _self.pageGuid : pageGuid // ignore: cast_nullable_to_non_nullable
as String?,pageProfilePhoto: freezed == pageProfilePhoto ? _self.pageProfilePhoto : pageProfilePhoto // ignore: cast_nullable_to_non_nullable
as String?,loginUserReaction: freezed == loginUserReaction ? _self.loginUserReaction : loginUserReaction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NestedReplyItem].
extension NestedReplyItemPatterns on NestedReplyItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NestedReplyItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NestedReplyItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NestedReplyItem value)  $default,){
final _that = this;
switch (_that) {
case _NestedReplyItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NestedReplyItem value)?  $default,){
final _that = this;
switch (_that) {
case _NestedReplyItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String guid,  String? replyComment,  String? replyCommentPhoto,  String? replyCommentVideo,  String? replyCreatedOn,  String name,  String personGuid,  int reactionCount,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  String? loginUserReaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NestedReplyItem() when $default != null:
return $default(_that.guid,_that.replyComment,_that.replyCommentPhoto,_that.replyCommentVideo,_that.replyCreatedOn,_that.name,_that.personGuid,_that.reactionCount,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.loginUserReaction);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String guid,  String? replyComment,  String? replyCommentPhoto,  String? replyCommentVideo,  String? replyCreatedOn,  String name,  String personGuid,  int reactionCount,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  String? loginUserReaction)  $default,) {final _that = this;
switch (_that) {
case _NestedReplyItem():
return $default(_that.guid,_that.replyComment,_that.replyCommentPhoto,_that.replyCommentVideo,_that.replyCreatedOn,_that.name,_that.personGuid,_that.reactionCount,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.loginUserReaction);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String guid,  String? replyComment,  String? replyCommentPhoto,  String? replyCommentVideo,  String? replyCreatedOn,  String name,  String personGuid,  int reactionCount,  String? photo,  String? pageName,  String? pageGuid,  String? pageProfilePhoto,  String? loginUserReaction)?  $default,) {final _that = this;
switch (_that) {
case _NestedReplyItem() when $default != null:
return $default(_that.guid,_that.replyComment,_that.replyCommentPhoto,_that.replyCommentVideo,_that.replyCreatedOn,_that.name,_that.personGuid,_that.reactionCount,_that.photo,_that.pageName,_that.pageGuid,_that.pageProfilePhoto,_that.loginUserReaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NestedReplyItem implements NestedReplyItem {
  const _NestedReplyItem({required this.guid, this.replyComment, this.replyCommentPhoto, this.replyCommentVideo, this.replyCreatedOn, required this.name, required this.personGuid, this.reactionCount = 0, this.photo, this.pageName, this.pageGuid, this.pageProfilePhoto, this.loginUserReaction});
  factory _NestedReplyItem.fromJson(Map<String, dynamic> json) => _$NestedReplyItemFromJson(json);

@override final  String guid;
@override final  String? replyComment;
@override final  String? replyCommentPhoto;
@override final  String? replyCommentVideo;
@override final  String? replyCreatedOn;
@override final  String name;
@override final  String personGuid;
@override@JsonKey() final  int reactionCount;
@override final  String? photo;
@override final  String? pageName;
@override final  String? pageGuid;
@override final  String? pageProfilePhoto;
@override final  String? loginUserReaction;

/// Create a copy of NestedReplyItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NestedReplyItemCopyWith<_NestedReplyItem> get copyWith => __$NestedReplyItemCopyWithImpl<_NestedReplyItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NestedReplyItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NestedReplyItem&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.replyComment, replyComment) || other.replyComment == replyComment)&&(identical(other.replyCommentPhoto, replyCommentPhoto) || other.replyCommentPhoto == replyCommentPhoto)&&(identical(other.replyCommentVideo, replyCommentVideo) || other.replyCommentVideo == replyCommentVideo)&&(identical(other.replyCreatedOn, replyCreatedOn) || other.replyCreatedOn == replyCreatedOn)&&(identical(other.name, name) || other.name == name)&&(identical(other.personGuid, personGuid) || other.personGuid == personGuid)&&(identical(other.reactionCount, reactionCount) || other.reactionCount == reactionCount)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.pageName, pageName) || other.pageName == pageName)&&(identical(other.pageGuid, pageGuid) || other.pageGuid == pageGuid)&&(identical(other.pageProfilePhoto, pageProfilePhoto) || other.pageProfilePhoto == pageProfilePhoto)&&(identical(other.loginUserReaction, loginUserReaction) || other.loginUserReaction == loginUserReaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guid,replyComment,replyCommentPhoto,replyCommentVideo,replyCreatedOn,name,personGuid,reactionCount,photo,pageName,pageGuid,pageProfilePhoto,loginUserReaction);

@override
String toString() {
  return 'NestedReplyItem(guid: $guid, replyComment: $replyComment, replyCommentPhoto: $replyCommentPhoto, replyCommentVideo: $replyCommentVideo, replyCreatedOn: $replyCreatedOn, name: $name, personGuid: $personGuid, reactionCount: $reactionCount, photo: $photo, pageName: $pageName, pageGuid: $pageGuid, pageProfilePhoto: $pageProfilePhoto, loginUserReaction: $loginUserReaction)';
}


}

/// @nodoc
abstract mixin class _$NestedReplyItemCopyWith<$Res> implements $NestedReplyItemCopyWith<$Res> {
  factory _$NestedReplyItemCopyWith(_NestedReplyItem value, $Res Function(_NestedReplyItem) _then) = __$NestedReplyItemCopyWithImpl;
@override @useResult
$Res call({
 String guid, String? replyComment, String? replyCommentPhoto, String? replyCommentVideo, String? replyCreatedOn, String name, String personGuid, int reactionCount, String? photo, String? pageName, String? pageGuid, String? pageProfilePhoto, String? loginUserReaction
});




}
/// @nodoc
class __$NestedReplyItemCopyWithImpl<$Res>
    implements _$NestedReplyItemCopyWith<$Res> {
  __$NestedReplyItemCopyWithImpl(this._self, this._then);

  final _NestedReplyItem _self;
  final $Res Function(_NestedReplyItem) _then;

/// Create a copy of NestedReplyItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guid = null,Object? replyComment = freezed,Object? replyCommentPhoto = freezed,Object? replyCommentVideo = freezed,Object? replyCreatedOn = freezed,Object? name = null,Object? personGuid = null,Object? reactionCount = null,Object? photo = freezed,Object? pageName = freezed,Object? pageGuid = freezed,Object? pageProfilePhoto = freezed,Object? loginUserReaction = freezed,}) {
  return _then(_NestedReplyItem(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,replyComment: freezed == replyComment ? _self.replyComment : replyComment // ignore: cast_nullable_to_non_nullable
as String?,replyCommentPhoto: freezed == replyCommentPhoto ? _self.replyCommentPhoto : replyCommentPhoto // ignore: cast_nullable_to_non_nullable
as String?,replyCommentVideo: freezed == replyCommentVideo ? _self.replyCommentVideo : replyCommentVideo // ignore: cast_nullable_to_non_nullable
as String?,replyCreatedOn: freezed == replyCreatedOn ? _self.replyCreatedOn : replyCreatedOn // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personGuid: null == personGuid ? _self.personGuid : personGuid // ignore: cast_nullable_to_non_nullable
as String,reactionCount: null == reactionCount ? _self.reactionCount : reactionCount // ignore: cast_nullable_to_non_nullable
as int,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,pageName: freezed == pageName ? _self.pageName : pageName // ignore: cast_nullable_to_non_nullable
as String?,pageGuid: freezed == pageGuid ? _self.pageGuid : pageGuid // ignore: cast_nullable_to_non_nullable
as String?,pageProfilePhoto: freezed == pageProfilePhoto ? _self.pageProfilePhoto : pageProfilePhoto // ignore: cast_nullable_to_non_nullable
as String?,loginUserReaction: freezed == loginUserReaction ? _self.loginUserReaction : loginUserReaction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CommentState {

 List<CommentItem> get comments; bool get isLoading; bool get isLoadingMore; String? get error; String? get replyingTo; String? get replyingToName; CommentType? get replyType; bool get hasMoreComments; String? get lastCommentCursor; int get pageSize;
/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentStateCopyWith<CommentState> get copyWith => _$CommentStateCopyWithImpl<CommentState>(this as CommentState, _$identity);

  /// Serializes this CommentState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentState&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error)&&(identical(other.replyingTo, replyingTo) || other.replyingTo == replyingTo)&&(identical(other.replyingToName, replyingToName) || other.replyingToName == replyingToName)&&(identical(other.replyType, replyType) || other.replyType == replyType)&&(identical(other.hasMoreComments, hasMoreComments) || other.hasMoreComments == hasMoreComments)&&(identical(other.lastCommentCursor, lastCommentCursor) || other.lastCommentCursor == lastCommentCursor)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comments),isLoading,isLoadingMore,error,replyingTo,replyingToName,replyType,hasMoreComments,lastCommentCursor,pageSize);

@override
String toString() {
  return 'CommentState(comments: $comments, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, replyingTo: $replyingTo, replyingToName: $replyingToName, replyType: $replyType, hasMoreComments: $hasMoreComments, lastCommentCursor: $lastCommentCursor, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $CommentStateCopyWith<$Res>  {
  factory $CommentStateCopyWith(CommentState value, $Res Function(CommentState) _then) = _$CommentStateCopyWithImpl;
@useResult
$Res call({
 List<CommentItem> comments, bool isLoading, bool isLoadingMore, String? error, String? replyingTo, String? replyingToName, CommentType? replyType, bool hasMoreComments, String? lastCommentCursor, int pageSize
});




}
/// @nodoc
class _$CommentStateCopyWithImpl<$Res>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._self, this._then);

  final CommentState _self;
  final $Res Function(CommentState) _then;

/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comments = null,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? replyingTo = freezed,Object? replyingToName = freezed,Object? replyType = freezed,Object? hasMoreComments = null,Object? lastCommentCursor = freezed,Object? pageSize = null,}) {
  return _then(_self.copyWith(
comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentItem>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,replyingTo: freezed == replyingTo ? _self.replyingTo : replyingTo // ignore: cast_nullable_to_non_nullable
as String?,replyingToName: freezed == replyingToName ? _self.replyingToName : replyingToName // ignore: cast_nullable_to_non_nullable
as String?,replyType: freezed == replyType ? _self.replyType : replyType // ignore: cast_nullable_to_non_nullable
as CommentType?,hasMoreComments: null == hasMoreComments ? _self.hasMoreComments : hasMoreComments // ignore: cast_nullable_to_non_nullable
as bool,lastCommentCursor: freezed == lastCommentCursor ? _self.lastCommentCursor : lastCommentCursor // ignore: cast_nullable_to_non_nullable
as String?,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentState].
extension CommentStatePatterns on CommentState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentState value)  $default,){
final _that = this;
switch (_that) {
case _CommentState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentState value)?  $default,){
final _that = this;
switch (_that) {
case _CommentState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommentItem> comments,  bool isLoading,  bool isLoadingMore,  String? error,  String? replyingTo,  String? replyingToName,  CommentType? replyType,  bool hasMoreComments,  String? lastCommentCursor,  int pageSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentState() when $default != null:
return $default(_that.comments,_that.isLoading,_that.isLoadingMore,_that.error,_that.replyingTo,_that.replyingToName,_that.replyType,_that.hasMoreComments,_that.lastCommentCursor,_that.pageSize);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommentItem> comments,  bool isLoading,  bool isLoadingMore,  String? error,  String? replyingTo,  String? replyingToName,  CommentType? replyType,  bool hasMoreComments,  String? lastCommentCursor,  int pageSize)  $default,) {final _that = this;
switch (_that) {
case _CommentState():
return $default(_that.comments,_that.isLoading,_that.isLoadingMore,_that.error,_that.replyingTo,_that.replyingToName,_that.replyType,_that.hasMoreComments,_that.lastCommentCursor,_that.pageSize);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommentItem> comments,  bool isLoading,  bool isLoadingMore,  String? error,  String? replyingTo,  String? replyingToName,  CommentType? replyType,  bool hasMoreComments,  String? lastCommentCursor,  int pageSize)?  $default,) {final _that = this;
switch (_that) {
case _CommentState() when $default != null:
return $default(_that.comments,_that.isLoading,_that.isLoadingMore,_that.error,_that.replyingTo,_that.replyingToName,_that.replyType,_that.hasMoreComments,_that.lastCommentCursor,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentState implements CommentState {
  const _CommentState({final  List<CommentItem> comments = const [], this.isLoading = false, this.isLoadingMore = false, this.error, this.replyingTo, this.replyingToName, this.replyType, this.hasMoreComments = false, this.lastCommentCursor, this.pageSize = 20}): _comments = comments;
  factory _CommentState.fromJson(Map<String, dynamic> json) => _$CommentStateFromJson(json);

 final  List<CommentItem> _comments;
@override@JsonKey() List<CommentItem> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? error;
@override final  String? replyingTo;
@override final  String? replyingToName;
@override final  CommentType? replyType;
@override@JsonKey() final  bool hasMoreComments;
@override final  String? lastCommentCursor;
@override@JsonKey() final  int pageSize;

/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentStateCopyWith<_CommentState> get copyWith => __$CommentStateCopyWithImpl<_CommentState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentState&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error)&&(identical(other.replyingTo, replyingTo) || other.replyingTo == replyingTo)&&(identical(other.replyingToName, replyingToName) || other.replyingToName == replyingToName)&&(identical(other.replyType, replyType) || other.replyType == replyType)&&(identical(other.hasMoreComments, hasMoreComments) || other.hasMoreComments == hasMoreComments)&&(identical(other.lastCommentCursor, lastCommentCursor) || other.lastCommentCursor == lastCommentCursor)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments),isLoading,isLoadingMore,error,replyingTo,replyingToName,replyType,hasMoreComments,lastCommentCursor,pageSize);

@override
String toString() {
  return 'CommentState(comments: $comments, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, replyingTo: $replyingTo, replyingToName: $replyingToName, replyType: $replyType, hasMoreComments: $hasMoreComments, lastCommentCursor: $lastCommentCursor, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$CommentStateCopyWith<$Res> implements $CommentStateCopyWith<$Res> {
  factory _$CommentStateCopyWith(_CommentState value, $Res Function(_CommentState) _then) = __$CommentStateCopyWithImpl;
@override @useResult
$Res call({
 List<CommentItem> comments, bool isLoading, bool isLoadingMore, String? error, String? replyingTo, String? replyingToName, CommentType? replyType, bool hasMoreComments, String? lastCommentCursor, int pageSize
});




}
/// @nodoc
class __$CommentStateCopyWithImpl<$Res>
    implements _$CommentStateCopyWith<$Res> {
  __$CommentStateCopyWithImpl(this._self, this._then);

  final _CommentState _self;
  final $Res Function(_CommentState) _then;

/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comments = null,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? replyingTo = freezed,Object? replyingToName = freezed,Object? replyType = freezed,Object? hasMoreComments = null,Object? lastCommentCursor = freezed,Object? pageSize = null,}) {
  return _then(_CommentState(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentItem>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,replyingTo: freezed == replyingTo ? _self.replyingTo : replyingTo // ignore: cast_nullable_to_non_nullable
as String?,replyingToName: freezed == replyingToName ? _self.replyingToName : replyingToName // ignore: cast_nullable_to_non_nullable
as String?,replyType: freezed == replyType ? _self.replyType : replyType // ignore: cast_nullable_to_non_nullable
as CommentType?,hasMoreComments: null == hasMoreComments ? _self.hasMoreComments : hasMoreComments // ignore: cast_nullable_to_non_nullable
as bool,lastCommentCursor: freezed == lastCommentCursor ? _self.lastCommentCursor : lastCommentCursor // ignore: cast_nullable_to_non_nullable
as String?,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ReactionType {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReactionType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReactionType()';
}


}

/// @nodoc
class $ReactionTypeCopyWith<$Res>  {
$ReactionTypeCopyWith(ReactionType _, $Res Function(ReactionType) __);
}


/// Adds pattern-matching-related methods to [ReactionType].
extension ReactionTypePatterns on ReactionType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Like value)?  like,TResult Function( _Love value)?  love,TResult Function( _Laugh value)?  laugh,TResult Function( _Angry value)?  angry,TResult Function( _Sad value)?  sad,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Like() when like != null:
return like(_that);case _Love() when love != null:
return love(_that);case _Laugh() when laugh != null:
return laugh(_that);case _Angry() when angry != null:
return angry(_that);case _Sad() when sad != null:
return sad(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Like value)  like,required TResult Function( _Love value)  love,required TResult Function( _Laugh value)  laugh,required TResult Function( _Angry value)  angry,required TResult Function( _Sad value)  sad,}){
final _that = this;
switch (_that) {
case _Like():
return like(_that);case _Love():
return love(_that);case _Laugh():
return laugh(_that);case _Angry():
return angry(_that);case _Sad():
return sad(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Like value)?  like,TResult? Function( _Love value)?  love,TResult? Function( _Laugh value)?  laugh,TResult? Function( _Angry value)?  angry,TResult? Function( _Sad value)?  sad,}){
final _that = this;
switch (_that) {
case _Like() when like != null:
return like(_that);case _Love() when love != null:
return love(_that);case _Laugh() when laugh != null:
return laugh(_that);case _Angry() when angry != null:
return angry(_that);case _Sad() when sad != null:
return sad(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  like,TResult Function()?  love,TResult Function()?  laugh,TResult Function()?  angry,TResult Function()?  sad,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Like() when like != null:
return like();case _Love() when love != null:
return love();case _Laugh() when laugh != null:
return laugh();case _Angry() when angry != null:
return angry();case _Sad() when sad != null:
return sad();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  like,required TResult Function()  love,required TResult Function()  laugh,required TResult Function()  angry,required TResult Function()  sad,}) {final _that = this;
switch (_that) {
case _Like():
return like();case _Love():
return love();case _Laugh():
return laugh();case _Angry():
return angry();case _Sad():
return sad();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  like,TResult? Function()?  love,TResult? Function()?  laugh,TResult? Function()?  angry,TResult? Function()?  sad,}) {final _that = this;
switch (_that) {
case _Like() when like != null:
return like();case _Love() when love != null:
return love();case _Laugh() when laugh != null:
return laugh();case _Angry() when angry != null:
return angry();case _Sad() when sad != null:
return sad();case _:
  return null;

}
}

}

/// @nodoc


class _Like implements ReactionType {
  const _Like();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Like);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReactionType.like()';
}


}




/// @nodoc


class _Love implements ReactionType {
  const _Love();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Love);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReactionType.love()';
}


}




/// @nodoc


class _Laugh implements ReactionType {
  const _Laugh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Laugh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReactionType.laugh()';
}


}




/// @nodoc


class _Angry implements ReactionType {
  const _Angry();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Angry);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReactionType.angry()';
}


}




/// @nodoc


class _Sad implements ReactionType {
  const _Sad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReactionType.sad()';
}


}




/// @nodoc
mixin _$PaginatedResponse<T> {

 List<T> get items; bool get hasMore; String? get nextCursor; int get totalCount;
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith => _$PaginatedResponseCopyWithImpl<T, PaginatedResponse<T>>(this as PaginatedResponse<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedResponse<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),hasMore,nextCursor,totalCount);

@override
String toString() {
  return 'PaginatedResponse<$T>(items: $items, hasMore: $hasMore, nextCursor: $nextCursor, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $PaginatedResponseCopyWith<T,$Res>  {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value, $Res Function(PaginatedResponse<T>) _then) = _$PaginatedResponseCopyWithImpl;
@useResult
$Res call({
 List<T> items, bool hasMore, String? nextCursor, int totalCount
});




}
/// @nodoc
class _$PaginatedResponseCopyWithImpl<T,$Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._self, this._then);

  final PaginatedResponse<T> _self;
  final $Res Function(PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? hasMore = null,Object? nextCursor = freezed,Object? totalCount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedResponse].
extension PaginatedResponsePatterns<T> on PaginatedResponse<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedResponse<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedResponse<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedResponse<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  bool hasMore,  String? nextCursor,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.items,_that.hasMore,_that.nextCursor,_that.totalCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  bool hasMore,  String? nextCursor,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse():
return $default(_that.items,_that.hasMore,_that.nextCursor,_that.totalCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  bool hasMore,  String? nextCursor,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.items,_that.hasMore,_that.nextCursor,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc


class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const _PaginatedResponse({required final  List<T> items, required this.hasMore, this.nextCursor, this.totalCount = 0}): _items = items;
  

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  bool hasMore;
@override final  String? nextCursor;
@override@JsonKey() final  int totalCount;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResponseCopyWith<T, _PaginatedResponse<T>> get copyWith => __$PaginatedResponseCopyWithImpl<T, _PaginatedResponse<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedResponse<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),hasMore,nextCursor,totalCount);

@override
String toString() {
  return 'PaginatedResponse<$T>(items: $items, hasMore: $hasMore, nextCursor: $nextCursor, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResponseCopyWith<T,$Res> implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$PaginatedResponseCopyWith(_PaginatedResponse<T> value, $Res Function(_PaginatedResponse<T>) _then) = __$PaginatedResponseCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, bool hasMore, String? nextCursor, int totalCount
});




}
/// @nodoc
class __$PaginatedResponseCopyWithImpl<T,$Res>
    implements _$PaginatedResponseCopyWith<T, $Res> {
  __$PaginatedResponseCopyWithImpl(this._self, this._then);

  final _PaginatedResponse<T> _self;
  final $Res Function(_PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? hasMore = null,Object? nextCursor = freezed,Object? totalCount = null,}) {
  return _then(_PaginatedResponse<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
