import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/comment_view_model.dart';
import 'package:html_unescape/html_unescape.dart';

class CommentList extends StatelessWidget {
  final List<CommentViewModel> comments;
  CommentList({this.comments});

  final unescap = new HtmlUnescape();

  String _formateCommentText(String text){
    final formattedText = unescap.convert(text ?? "");
    return formattedText.isNotEmpty ?formattedText.substring(0,min(200,formattedText.length)) : "";
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.comments.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color:Colors.green
              ),
              child: Text("${index + 1}"
              )
              ),
            title: Text( _formateCommentText(this.comments[index].title)),
          );
        });
  }
}
