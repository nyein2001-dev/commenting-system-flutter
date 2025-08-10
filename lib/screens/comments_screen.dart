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
                                    key: ValueKey(comment.guid), // Important for performance
                                    comment: comment,
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
            onSubmit: (text) {
              final notifier = ref.read(commentProvider.notifier);

              if (commentState.replyingTo != null) {
                switch (commentState.replyType) {
                  case CommentType.root:
                    notifier.addReply(commentState.replyingTo!, text);
                    break;
                  case CommentType.reply:
                    notifier.addNestedReply(commentState.replyingTo!, text);
                    break;
                  case CommentType.nested:
                    // Handle nested reply to nested reply if needed
                    break;
                  case null:
                    break;
                }
              } else {
                notifier.addComment(widget.postId, text);
              }
            },
          ),
        ],
      ),
    );
  }
}
