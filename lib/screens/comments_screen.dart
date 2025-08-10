import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/comment_provider.dart';
import '../widgets/comment_item_widget.dart';
import '../widgets/comment_input_widget.dart';
import '../models/comment_models.dart';

class CommentsScreen extends ConsumerStatefulWidget {
  final String postId;

  const CommentsScreen({super.key, required this.postId});

  @override
  ConsumerState<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends ConsumerState<CommentsScreen> {
  final ScrollController _scrollController = ScrollController();
  
  // GlobalKeys for auto-scrolling to specific comments/replies/nested replies
  final Map<String, GlobalKey> _commentKeys = {};
  final Map<String, GlobalKey> _replyKeys = {};
  final Map<String, GlobalKey> _nestedReplyKeys = {};
  
  // Track last added content for auto-scrolling
  String? _lastAddedCommentId;
  String? _lastAddedReplyId;
  String? _lastAddedNestedReplyId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(commentProvider.notifier).loadComments(widget.postId);
    });
    
    // Add scroll listener for pagination
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreComments();
    }
  }

  Future<void> _loadMoreComments() async {
    final commentState = ref.read(commentProvider);
    if (commentState.isLoadingMore || !commentState.hasMoreComments) return;
    
    await ref.read(commentProvider.notifier).loadMoreComments(widget.postId);
  }
  
  // Auto-scroll to newly added content
  void _scrollToNewContent() {
    if (_lastAddedCommentId != null) {
      _scrollToComment(_lastAddedCommentId!);
      _lastAddedCommentId = null;
    } else if (_lastAddedReplyId != null) {
      _scrollToReply(_lastAddedReplyId!);
      _lastAddedReplyId = null;
    } else if (_lastAddedNestedReplyId != null) {
      _scrollToNestedReply(_lastAddedNestedReplyId!);
      _lastAddedNestedReplyId = null;
    }
  }
  
  // Scroll to specific comment
  void _scrollToComment(String commentId) {
    final key = _commentKeys[commentId];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
  
  // Scroll to specific reply
  void _scrollToReply(String replyId) {
    final key = _replyKeys[replyId];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
  
  // Scroll to specific nested reply
  void _scrollToNestedReply(String nestedReplyId) {
    final key = _nestedReplyKeys[nestedReplyId];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final commentState = ref.watch(commentProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Comments',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Comments List with CustomScrollView for better performance
          Expanded(
            child: commentState.isLoading
                ? const Center(child: CircularProgressIndicator())
                : commentState.error != null
                    ? Center(
                        child: Text(
                          'Error: ${commentState.error}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      )
                    : CustomScrollView(
                        controller: _scrollController,
                        slivers: [
                          // Comments SliverList
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final comment = commentState.comments[index];
                                  return CommentItemWidget(
                                    key: _commentKeys[comment.guid] = GlobalKey(), // Use GlobalKey for auto-scrolling
                                    comment: comment,
                                    replyKeys: _replyKeys,
                                    nestedReplyKeys: _nestedReplyKeys,
                                    onReply: (commentId, userName) {
                                      ref
                                          .read(commentProvider.notifier)
                                          .setReplyTarget(
                                            commentId,
                                            userName,
                                            CommentType.root,
                                          );
                                    },
                                    onReact: (commentId, reaction) {
                                      ref
                                          .read(commentProvider.notifier)
                                          .reactToComment(commentId, reaction);
                                    },
                                    onToggleExpansion: (commentId) {
                                      ref
                                          .read(commentProvider.notifier)
                                          .toggleCommentExpansion(commentId);
                                    },
                                    onLoadMoreReplies: (commentId) {
                                      ref
                                          .read(commentProvider.notifier)
                                          .loadMoreReplies(commentId);
                                    },
                                  );
                                },
                                childCount: commentState.comments.length,
                              ),
                            ),
                          ),
                          
                          // Loading indicator for pagination
                          if (commentState.isLoadingMore)
                            const SliverToBoxAdapter(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                          
                          // End of list indicator
                          if (!commentState.hasMoreComments && commentState.comments.isNotEmpty)
                            const SliverToBoxAdapter(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                  child: Text(
                                    'No more comments',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
          ),

          // Comment Input
          CommentInputWidget(
            postId: widget.postId,
            replyingTo: commentState.replyingTo,
            replyingToName: commentState.replyingToName,
            replyType: commentState.replyType,
            onClearReply: () {
              ref.read(commentProvider.notifier).clearReplyTarget();
            },
            onSubmit: (text) async {
              final notifier = ref.read(commentProvider.notifier);

              if (commentState.replyingTo != null) {
                switch (commentState.replyType) {
                  case CommentType.root:
                    final replyId = await notifier.addReply(commentState.replyingTo!, text);
                    if (replyId != null) {
                      _lastAddedReplyId = replyId;
                      // Trigger auto-scroll after a short delay to ensure UI is updated
                      Future.delayed(const Duration(milliseconds: 100), _scrollToNewContent);
                    }
                    break;
                  case CommentType.reply:
                    final nestedReplyId = await notifier.addNestedReply(commentState.replyingTo!, text);
                    if (nestedReplyId != null) {
                      _lastAddedNestedReplyId = nestedReplyId;
                      // Trigger auto-scroll after a short delay to ensure UI is updated
                      Future.delayed(const Duration(milliseconds: 100), _scrollToNewContent);
                    }
                    break;
                  case CommentType.nested:
                    // Handle nested reply to nested reply if needed
                    break;
                  case null:
                    break;
                }
              } else {
                final commentId = await notifier.addComment(widget.postId, text);
                if (commentId != null) {
                  _lastAddedCommentId = commentId;
                  // For comments, scroll to top immediately
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
