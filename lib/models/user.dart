// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String? id;
  String name;
  String avatar;
  int? friends;
  User({
    this.id,
    required this.name,
    required this.avatar,
    this.friends,
  });

}
