import 'package:flutter/material.dart';
import '../models/comment_models.dart';

class NestedReplyItemWidget extends StatelessWidget {
  final NestedReplyItem nestedReply;
  final Function(String nestedReplyId, ReactionType reaction) onReact;

  const NestedReplyItemWidget({
    super.key,
    required this.nestedReply,
    required this.onReact,
  });

  @override
  Widget build(BuildContext context) {
    final isNewlyAdded = nestedReply.isNewlyAdded;
    
    // Determine decoration based on state
    BoxDecoration? decoration;
    EdgeInsets? padding;
    
    if (isNewlyAdded) {
      // Newly added nested reply - highlight with purple
      decoration = BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.purple.shade200),
      );
      padding = const EdgeInsets.all(8);
    }
    
    return Container(
      margin: const EdgeInsets.only(left: 40, bottom: 8),
      child: Container(
        decoration: decoration,
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar
            CircleAvatar(
              radius: 14,
              backgroundImage:
                  nestedReply.photo != null
                      ? NetworkImage(nestedReply.photo!)
                      : null,
              child:
                  nestedReply.photo == null
                      ? Text(
                        nestedReply.name.isNotEmpty
                            ? nestedReply.name[0].toUpperCase()
                            : 'U',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                      : null,
            ),
            const SizedBox(width: 10),

            // Nested Reply Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Name
                  Text(
                    nestedReply.name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 2),

                  // Nested Reply Text with mention
                  if (nestedReply.replyComment?.isNotEmpty == true)
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                        children: _buildReplyTextSpans(nestedReply.replyComment!),
                      ),
                    ),
                  const SizedBox(height: 4),

                  // Time
                  Text(
                    nestedReply.isSubmitting ? 'Commenting' : (nestedReply.replyCreatedOn ?? ''),
                    style: TextStyle(
                      fontSize: 10, 
                      color: nestedReply.isSubmitting ? Colors.blue : Colors.grey,
                      fontWeight: nestedReply.isSubmitting ? FontWeight.w500 : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // Reaction Button
            Column(
              children: [
                if (nestedReply.reactionCount > 0)
                  Text(
                    '${nestedReply.reactionCount}',
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                GestureDetector(
                  onTap:
                      () => onReact(nestedReply.guid, const ReactionType.like()),
                  child: Icon(
                    nestedReply.loginUserReaction != null
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 16,
                    color:
                        nestedReply.loginUserReaction != null
                            ? Colors.red
                            : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
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
