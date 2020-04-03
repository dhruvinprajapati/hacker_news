

import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class StoryListViewModel{

  List<StoryViewModel> stories = List<StoryViewModel>();

  Future<void> getTopStories()async{
    final result = await Webservice().getTopStories();
    debugPrint("$result");
  }

}