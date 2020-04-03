import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/story_view_model.dart';

class StoryList extends StatelessWidget {
  
  final List<StoryViewModel> stories;

  StoryList({this.stories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.stories.length,
      itemBuilder: (context,index){

        final story = this.stories[index];
        return ListTile(
          title: Text(story.title,style: TextStyle(fontSize: 20),),
          trailing: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Text("${story.onOfComments}",style: TextStyle(color: Colors.white),)
            ),
        );
    });
  }
}