import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_models.dart';
import '../providers/comment_provider.dart';
import 'reply_item_widget.dart';

class CommentItemWidget extends ConsumerWidget {
  final CommentItem comment;
  final Function(String commentId, String userName) onReply;
  final Function(String commentId, ReactionType reaction) onReact;
  final Function(String commentId) onToggleExpansion;

  const CommentItemWidget({
    super.key,
    required this.comment,
    required this.onReply,
    required this.onReact,
    required this.onToggleExpansion,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main Comment
          Row(
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
                          comment.createdOn ?? '',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
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

          // Replies
          if (comment.replies.isNotEmpty) ...[
            const SizedBox(height: 12),

            // Show More Replies Button
            if (comment.replies.length > 1 && !comment.isExpanded)
              GestureDetector(
                onTap: () => onToggleExpansion(comment.guid),
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

            // Replies List
            ...comment.replies.asMap().entries.map((entry) {
              final index = entry.key;
              final reply = entry.value;

              // Show first reply always, others only when expanded
              if (index == 0 || comment.isExpanded) {
                return ReplyItemWidget(
                  reply: reply,
                  commentId: comment.guid,
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
                  onToggleExpansion: (replyId) {
                    ref
                        .read(commentProvider.notifier)
                        .toggleReplyExpansion(comment.guid, replyId);
                  },
                );
              }
              return const SizedBox.shrink();
            }),

            // Hide Replies Button
            if (comment.isExpanded && comment.replies.length > 1)
              GestureDetector(
                onTap: () => onToggleExpansion(comment.guid),
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
