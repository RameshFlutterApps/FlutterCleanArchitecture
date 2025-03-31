import '../../domain/entities/post.dart';

class PostModel extends Post {
  const PostModel({required int id, required int userId,required String title, required String body})
      : super(id, userId, title, body);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(id: json['id'], userId: json['userId'],title: json['title'], body: json['body']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'userId':userId,'title': title, 'body': body};
  }
}
