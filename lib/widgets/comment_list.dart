import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/comment_view_model.dart';

class CommentList extends StatelessWidget {

  final List<CommentViewModel> comments;
  CommentList({this.comments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: this.comments.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(this.comments[index].title ?? ""),
            );
          });
  }
}