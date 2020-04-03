import 'package:flutter/material.dart';
import 'package:hacker_news/services/webservice.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class StoryListViewModel extends ChangeNotifier{

  List<StoryViewModel> stories = List<StoryViewModel>();

  Future<void> getTopStories()async{
    final Iterable result = await Webservice().getTopStories();
    this.stories = result.map((story)=>StoryViewModel(story: story)).toList();
    notifyListeners();
  }

}