import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/story_list_view_model.dart';

class HomePage extends StatelessWidget {

  HomePage(){
    StoryListViewModel().getTopStories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Hacker News")
      ),
      body: Text("Top stories"),
    );
  }
}