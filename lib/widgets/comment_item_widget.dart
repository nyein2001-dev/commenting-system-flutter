import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_models.dart';
import '../providers/comment_provider.dart';
import 'reply_item_widget.dart';

class CommentItemWidget extends ConsumerWidget {
  final CommentItem comment;
  final Function(String commentId, String userName) onReply;
  final Function(String commentId, ReactionType reaction) onReact;
  final Future<void> Function(String commentId) onToggleExpansion;
  final Function(String commentId) onLoadMoreReplies;
  final Map<String, GlobalKey> replyKeys;
  final Map<String, GlobalKey> nestedReplyKeys;

  const CommentItemWidget({
    super.key,
    required this.comment,
    required this.onReply,
    required this.onReact,
    required this.onToggleExpansion,
    required this.onLoadMoreReplies,
    required this.replyKeys,
    required this.nestedReplyKeys,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentState = ref.watch(commentProvider);
    final isTargetComment = commentState.replyingTo == comment.guid && 
                           commentState.replyType == CommentType.root;
    final isNewlyAdded = comment.isNewlyAdded;
    
    // Determine decoration based on state
    BoxDecoration? decoration;
    EdgeInsets? padding;
    
    if (isNewlyAdded) {
      // Newly added comment - highlight with green
      decoration = BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green.shade200),
      );
      padding = const EdgeInsets.all(12);
    } else if (isTargetComment) {
      // Target comment for reply - highlight with blue
      decoration = BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200),
      );
      padding = const EdgeInsets.all(12);
    }
    
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main Comment with highlighting
          Container(
            decoration: decoration,
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Avatar
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      comment.photo != null ? NetworkImage(comment.photo!) : null,
                  child:
                      comment.photo == null
                          ? Text(
                            comment.name.isNotEmpty
                                ? comment.name[0].toUpperCase()
                                : 'U',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                          : null,
                ),
                const SizedBox(width: 12),

                // Comment Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User Name
                      Text(
                        comment.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),

                      // Comment Text
                      if (comment.commentText?.isNotEmpty == true)
                        Text(
                          comment.commentText!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                      const SizedBox(height: 8),

                      // Time and Actions
                      Row(
                        children: [
                          Text(
                            comment.isSubmitting ? 'Commenting' : (comment.createdOn ?? ''),
                            style: TextStyle(
                              fontSize: 12,
                              color: comment.isSubmitting ? Colors.blue : Colors.grey,
                              fontWeight: comment.isSubmitting ? FontWeight.w500 : FontWeight.normal,
                            ),
                          ),
                          const SizedBox(width: 16),

                          if (comment.replyCount > 0) ...[
                            Text(
                              '${comment.replyCount} Reply${comment.replyCount > 1 ? 's' : ''}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 16),
                          ],

                          GestureDetector(
                            onTap: () => onReply(comment.guid, comment.name),
                            child: const Text(
                              'Reply',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          if (comment.loginUserReaction != null) ...[
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.favorite,
                              size: 12,
                              color: Colors.red,
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),

                // Reaction Button
                Column(
                  children: [
                    if (comment.reactionCount > 0)
                      Text(
                        '${comment.reactionCount}',
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    GestureDetector(
                      onTap:
                          () => onReact(comment.guid, const ReactionType.like()),
                      child: Icon(
                        comment.loginUserReaction != null
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 20,
                        color:
                            comment.loginUserReaction != null
                                ? Colors.red
                                : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Replies (outside of highlighting)
          if (comment.replies.isNotEmpty || comment.replyCount > 0) ...[
            const SizedBox(height: 12),

            // Show More Replies Button
            if (comment.replyCount > 1 && !comment.isExpanded)
              GestureDetector(
                onTap: () async => await onToggleExpansion(comment.guid),
                child: Padding(
                  padding: const EdgeInsets.only(left: 52),
                  child: Text(
                    'More replies',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

            // Replies List with optimized rendering
            if (comment.replies.isNotEmpty && comment.isExpanded)
              ...comment.replies.map((reply) {
                return ReplyItemWidget(
                  key: replyKeys[reply.guid] = GlobalKey(), // Use GlobalKey for auto-scrolling
                  reply: reply,
                  commentId: comment.guid,
                  nestedReplyKeys: nestedReplyKeys,
                  onReply: (replyId, userName) {
                    ref
                        .read(commentProvider.notifier)
                        .setReplyTarget(replyId, userName, CommentType.reply);
                  },
                  onReact: (replyId, reaction) {
                    ref
                        .read(commentProvider.notifier)
                        .reactToReply(comment.guid, replyId, reaction);
                  },
                  onToggleExpansion: (replyId) async {
                    await ref
                        .read(commentProvider.notifier)
                        .toggleReplyExpansion(comment.guid, replyId);
                  },
                  onLoadMoreNestedReplies: (replyId) {
                    ref
                        .read(commentProvider.notifier)
                        .loadMoreNestedReplies(comment.guid, replyId);
                  },
                );
              }),

            // Load More Replies Button
            if (comment.hasMoreReplies && comment.isExpanded)
              GestureDetector(
                onTap: () => onLoadMoreReplies(comment.guid),
                child: Padding(
                  padding: const EdgeInsets.only(left: 52, top: 8),
                  child: comment.isLoadingReplies
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(
                          'Load more replies',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ),
              ),

            // Hide Replies Button
            if (comment.isExpanded && comment.replies.length > 1)
              GestureDetector(
                onTap: () async => await onToggleExpansion(comment.guid),
                child: Padding(
                  padding: const EdgeInsets.only(left: 52, top: 8),
                  child: Row(
                    children: [
                      Text(
                        'Hide',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}
