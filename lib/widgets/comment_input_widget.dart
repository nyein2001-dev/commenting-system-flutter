import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_models.dart';
import '../providers/comment_provider.dart';

class CommentInputWidget extends ConsumerStatefulWidget {
  final String postId;
  final String? replyingTo;
  final String? replyingToName;
  final CommentType? replyType;
  final VoidCallback onClearReply;
  final Function(String text) onSubmit;

  const CommentInputWidget({
    super.key,
    required this.postId,
    this.replyingTo,
    this.replyingToName,
    this.replyType,
    required this.onClearReply,
    required this.onSubmit,
  });

  @override
  ConsumerState<CommentInputWidget> createState() => _CommentInputWidgetState();
}

class _CommentInputWidgetState extends ConsumerState<CommentInputWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submitComment() {
    final text = _controller.text.trim();
    final inputState = ref.read(commentInputProvider);
    if (text.isEmpty || inputState.isSubmitting) return;

    ref.read(commentInputProvider.notifier).setSubmitting(true);
    widget.onSubmit(text);
    _controller.clear();
    ref.read(commentInputProvider.notifier).clearText();
    ref.read(commentInputProvider.notifier).setSubmitting(false);
  }

  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(commentInputProvider);
    
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Reply indicator
          if (widget.replyingTo != null) ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Replying to ${widget.replyingToName ?? 'user'}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onClearReply,
                    child: Icon(
                      Icons.close,
                      size: 16,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],

          // Input field
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: widget.replyingTo != null
                        ? 'Write a reply...'
                        : 'Write a comment...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.blue.shade400),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                  maxLines: null,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => _submitComment(),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: _submitComment,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _controller.text.trim().isNotEmpty && !inputState.isSubmitting
                        ? Colors.blue
                        : Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: inputState.isSubmitting
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Icon(
                          Icons.send,
                          size: 20,
                          color: _controller.text.trim().isNotEmpty
                              ? Colors.white
                              : Colors.grey.shade600,
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
