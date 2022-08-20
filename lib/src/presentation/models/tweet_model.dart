class TweetModel {
  int tweetId;
  String tweetText;
  AuthorModel author;
  int loveCount;
  int commentCount;
  int retweetCount;
  bool isLoved;
  bool isRetweet;

  TweetModel(
      {required this.tweetId,
      required this.tweetText,
      required this.author,
      this.loveCount = 0,
      this.commentCount = 0,
      this.retweetCount = 0,
      this.isLoved = false,
      this.isRetweet = false});
}

class AuthorModel {
  String authorName;
  String authorPic;

  AuthorModel({required this.authorName, required this.authorPic});
}
