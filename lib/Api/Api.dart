class Api {
  List<News> news;

  Api({required this.news});


  }


class News {
  final User user;
  final Message message;

  News({required this.user, required this.message});

}

class User {
  final String name;
  final String profilePicture;

  User({required this.name, required this.profilePicture});


}

class Message {
  final String content;
  final String createdAt;

  Message({required this.content, required this.createdAt});



}