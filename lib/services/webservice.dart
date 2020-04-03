import 'dart:convert';

import 'package:hacker_news/models/story.dart';
import 'package:http/http.dart' as http;

class Webservice {

  Future<Story> _getStory(int storyId)async{
    final url = "https://hacker-news.firebaseio.com/v0/item/${storyId}.json?print=pretty";

    final response = await http.get(url);

    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      return Story.fromjson(json);
    }
    else{
      throw Exception("failed to get");
    }
  }

  Future<List<Story>> getTopStories()async{
    final url = "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty";

    final response = await http.get(url);
    if(response.statusCode == 200){
      Iterable storyIds = jsonDecode(response.body);
      return Future.wait(storyIds.take(10).map((storyId){
        return _getStory(storyId);
      }));

    }else {
      throw Exception("Unable to fetch data!");
    }
  }
}