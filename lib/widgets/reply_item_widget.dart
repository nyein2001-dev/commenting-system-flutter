import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_models.dart';
import '../providers/comment_provider.dart';
import 'nested_reply_item_widget.dart';

class ReplyItemWidget extends ConsumerWidget {
  final ReplyItem reply;
  final String commentId;
  final Function(String replyId, String userName) onReply;
  final Function(String replyId, ReactionType reaction) onReact;
  final Function(String replyId) onToggleExpansion;
  final Function(String replyId) onLoadMoreNestedReplies;

  const ReplyItemWidget({
    super.key,
    required this.reply,
    required this.commentId,
    required this.onReply,
    required this.onReact,
    required this.onToggleExpansion,
    required this.onLoadMoreNestedReplies,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentState = ref.watch(commentProvider);
    final isTargetReply = commentState.replyingTo == reply.guid && 
                         commentState.replyType == CommentType.reply;
    
    return Container(
      margin: const EdgeInsets.only(left: 52, bottom: 12),
      decoration: isTargetReply ? BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green.shade200),
      ) : null,
      padding: isTargetReply ? const EdgeInsets.all(8) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Avatar
              CircleAvatar(
                radius: 16,
                backgroundImage:
                    reply.photo != null ? NetworkImage(reply.photo!) : null,
                child:
                    reply.photo == null
                        ? Text(
                          reply.name.isNotEmpty
                              ? reply.name[0].toUpperCase()
                              : 'U',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                        : null,
              ),
              const SizedBox(width: 12),

              // Reply Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Name
                    Text(
                      reply.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 2),

                    // Reply Text with mention
                    if (reply.replyComment?.isNotEmpty == true)
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                          children: _buildReplyTextSpans(reply.replyComment!),
                        ),
                      ),
                    const SizedBox(height: 6),

                    // Time and Actions
                    Row(
                      children: [
                        Text(
                          reply.isSubmitting ? 'Commenting' : (reply.replyCreatedOn ?? ''),
                          style: TextStyle(
                            fontSize: 11,
                            color: reply.isSubmitting ? Colors.blue : Colors.grey,
                            fontWeight: reply.isSubmitting ? FontWeight.w500 : FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 12),

                        if (reply.replyCount > 0) ...[
                          Text(
                            '${reply.replyCount} Reply${reply.replyCount > 1 ? 's' : ''}',
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 12),
                        ],

                        GestureDetector(
                          onTap: () => onReply(reply.guid, reply.name),
                          child: const Text(
                            'Reply',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Reaction Button
              Column(
                children: [
                  if (reply.reactionCount > 0)
                    Text(
                      '${reply.reactionCount}',
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  GestureDetector(
                    onTap: () => onReact(reply.guid, const ReactionType.like()),
                    child: Icon(
                      reply.loginUserReaction != null
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 18,
                      color:
                          reply.loginUserReaction != null
                              ? Colors.red
                              : Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Nested Replies
          if (reply.nestedReplies.isNotEmpty || reply.replyCount > 0) ...[
            const SizedBox(height: 8),

            // Show More Replies Button
            if (reply.replyCount > 1 && !reply.isExpanded)
              GestureDetector(
                onTap: () => onToggleExpansion(reply.guid),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'More replies',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

            // Nested Replies List with optimized rendering
            if (reply.nestedReplies.isNotEmpty)
              ...reply.nestedReplies.asMap().entries.map((entry) {
                final index = entry.key;
                final nestedReply = entry.value;

                // Show first nested reply always, others only when expanded
                if (index == 0 || reply.isExpanded) {
                  return NestedReplyItemWidget(
                    key: ValueKey(nestedReply.guid), // Important for performance
                    nestedReply: nestedReply,
                    onReact: (nestedReplyId, reaction) {
                      // Handle nested reply reaction
                    },
                  );
                }
                return const SizedBox.shrink();
              }),

            // Load More Nested Replies Button
            if (reply.hasMoreNestedReplies && reply.isExpanded)
              GestureDetector(
                onTap: () => onLoadMoreNestedReplies(reply.guid),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, top: 4),
                  child: reply.isLoadingNestedReplies
                      ? const SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(
                          'Load more replies',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ),
              ),

            // Hide Replies Button
            if (reply.isExpanded && reply.nestedReplies.length > 1)
              GestureDetector(
                onTap: () => onToggleExpansion(reply.guid),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, top: 4),
                  child: Row(
                    children: [
                      Text(
                        'Hide',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 14,
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

  List<TextSpan> _buildReplyTextSpans(String text) {
    final List<TextSpan> spans = [];
    final RegExp mentionRegex = RegExp(r'@(\w+(?:\s+\w+)*)');

    int lastMatchEnd = 0;

    for (final match in mentionRegex.allMatches(text)) {
      // Add text before mention
      if (match.start > lastMatchEnd) {
        spans.add(TextSpan(text: text.substring(lastMatchEnd, match.start)));
      }

      // Add mention with blue color
      spans.add(
        TextSpan(
          text: match.group(0),
          style: TextStyle(
            color: Colors.blue[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      );

      lastMatchEnd = match.end;
    }

    // Add remaining text
    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd)));
    }

    return spans.isEmpty ? [TextSpan(text: text)] : spans;
  }
}
