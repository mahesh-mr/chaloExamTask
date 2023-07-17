class PostsModel {
  String? title;
  String? userId;
  String? body;
  int? id;

  PostsModel({this.title, this.userId, this.body, this.id});

  PostsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    userId = json['userId'];
    body = json['body'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title;
    data['userId'] = userId;
    data['body'] = body;
    data['id'] = id;
    return data;
  }
}
