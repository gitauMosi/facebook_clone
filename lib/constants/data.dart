import 'package:facebook_app/models/post.dart';
import 'package:facebook_app/models/product.dart';
import 'package:facebook_app/models/story.dart';
import 'package:facebook_app/models/user.dart';

List<Post> postList = [
  Post(
      user: usersList[0],
      title: "Morning, ",
      img: 'assets/images/img1.jpeg',
      likes: 4,
      createdAt: '2h',
      comments: commetsList),
  Post(
      user: usersList[3],
      title: "NEW TECHNOLOGY, ",
      img: 'assets/images/img1.jpeg',
      likes: 18,
      createdAt: '3h',
      comments: commetsList),
  Post(
      user: usersList[1],
      title: "Post malone, ",
      img: 'assets/images/img2.jpg',
      likes: 100,
      createdAt: '12h',
      comments: commetsList),
  Post(
      user: usersList[2],
      title: "New day, Hello Every one, ",
      img: 'assets/images/img3.jpeg',
      likes: 30,
      createdAt: '6h',
      comments: commetsList),
];

List<Commets> commetsList = [
  Commets(sender: usersList[0], title: " i like this"),
  Commets(sender: usersList[1], title: " Awesome"),
  Commets(sender: usersList[2], title: " Hello"),
  Commets(sender: usersList[3], title: " fine")
];

List<User> usersList = [
  User(name: "James hb", avatar: "assets/images/james.jpeg", friends: 23),
  User(name: "Johnty nt", avatar: "assets/images/johnty.jpeg", friends: 400),
  User(name: "Nora rano", avatar: "assets/images/nora.jpeg", friends: 200),
  User(name: "Anonymous ", avatar: "assets/images/pr2.jpeg", friends: 77),
  User(name: "Tery shi", avatar: "assets/images/tery.jpeg", friends: 344),
  User(name: "Nora rano", avatar: "assets/images/nora.jpeg", friends: 200),
];

List<Story> storyList = [
  Story(
    user: usersList[0],
    img: "assets/images/james.jpeg",
  ),
  Story(
    user: usersList[1],
    img: "assets/images/img2.jpg",
  ),
  Story(
    user: usersList[2],
    img: "assets/images/james.jpeg",
  ),
  Story(
    user: usersList[3],
    img: "assets/images/james.jpeg",
  ),
  Story(
    user: usersList[4],
    img: "assets/images/james.jpeg",
  ),
];

final List<Product> productList = [
  Product(
    name: "name",
     description: "description", 
     img: "assets/images/img3.jpeg",
     price: 200),
       Product(
    name: "name",
     description: "description", 
     img: "assets/images/img3.jpeg",
     price: 200),
       Product(
    name: "name",
     description: "description", 
     img: "assets/images/img3.jpeg",
     price: 200),
       Product(
    name: "name",
     description: "description", 
     img: "assets/images/img3.jpeg",
     price: 200),
       Product(
    name: "name",
     description: "description", 
     img: "assets/images/img3.jpeg",
     price: 200),
];
