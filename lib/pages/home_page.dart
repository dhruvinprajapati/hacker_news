import 'package:flutter/material.dart';
import 'package:hacker_news/view_models/story_list_view_model.dart';
import 'package:hacker_news/widgets/story_list.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<StoryListViewModel>(context,listen:false).getTopStories();
  }

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<StoryListViewModel>(context);
    debugPrint("${vm.stories.length}");

    return Scaffold(
      appBar: AppBar(
        title:Text("Hacker News")
      ),
      body: StoryList(stories: vm.stories),
    );
  }
}
