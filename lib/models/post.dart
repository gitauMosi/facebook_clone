// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook_app/models/user.dart';

class Post {
  User user;
  String? title;
  String? img;
  int? likes;
  String? createdAt;
  List<Commets>? comments;
  Post({
    required this.user,
    this.title,
    this.img,
    this.likes,
    this.comments,
    this.createdAt
  });
}

class Commets {
  User sender;
  String? title;
  Commets({
    required this.sender,
    this.title,
  });
}
