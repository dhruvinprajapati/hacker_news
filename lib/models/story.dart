

class Story{

  final String title;
  final String url;

  Story({this.title,this.url});

  factory Story.fromjson(Map<String,dynamic> json){
    return Story(
      title: json['title'],
      url: json['url']
    );
  }
}