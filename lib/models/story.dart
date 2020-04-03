

class Story{

  final String title;
  final String url;
  List<int> commentId = List<int>();
  Story({this.title,this.url,this.commentId});

  factory Story.fromjson(Map<String,dynamic> json){
    return Story(
      title: json['title'],
      url: json['url'],
      commentId:json["kids"] == null ? List<int>() : json["kids"].cast<int>()
    );
  }
}