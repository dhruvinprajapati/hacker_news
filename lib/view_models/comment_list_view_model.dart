

import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/view_models/comment_view_model.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class CommentListViewModel extends ChangeNotifier {
  List<CommentViewModel> comment = List<CommentViewModel>();

  void getCommentsByStory(StoryViewModel storyVM)async{

   final result = await Webservice().getCommentbyStory(storyVM.story);
   this.comment = result.map((item)=>CommentViewModel(comment: item)).toList();
   notifyListeners();
  }
}

