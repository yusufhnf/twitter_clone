part of './dashboard_screen.dart';

class _TweetListView extends StatefulWidget {
  const _TweetListView({Key? key}) : super(key: key);

  @override
  State<_TweetListView> createState() => _TweetListViewState();
}

class _TweetListViewState extends State<_TweetListView> {
  List<TweetModel> tweetResult = [
    TweetModel(
        tweetId: 0,
        tweetText: "Kulo tresna awakmu",
        author: AuthorModel(
            authorName: "Richard Susilo",
            authorPic: "https://picsum.photos/500")),
    TweetModel(
        tweetId: 1,
        tweetText:
            "Enak e turu tapi kok kesel pengen turu, update status ahh deng dowo, hehe. Gabut yo ngene iki. Nulis opo maneh enake",
        author: AuthorModel(
            authorName: "Avril Lavender",
            authorPic: "https://picsum.photos/500")),
    TweetModel(
        tweetId: 2,
        tweetText: "Info loker lur",
        author: AuthorModel(
            authorName: "Hans Tok", authorPic: "https://picsum.photos/500")),
    TweetModel(
        tweetId: 3,
        tweetText: "Lokar loker waeee",
        commentCount: 4,
        loveCount: 22,
        isLoved: true,
        retweetCount: 1,
        author: AuthorModel(
            authorName: "Ahmad Marimas",
            authorPic: "https://picsum.photos/500")),
    TweetModel(
        tweetId: 4,
        tweetText: "Simak tujuh keajaiban dunia, nomor 7 bikin geleng=-geleng",
        commentCount: 22,
        loveCount: 221,
        isRetweet: false,
        retweetCount: 111,
        author: AuthorModel(
            authorName: "Richard Aja", authorPic: "https://picsum.photos/500")),
    TweetModel(
        tweetId: 5,
        tweetText: "Capek",
        commentCount: 2,
        loveCount: 4,
        retweetCount: 21,
        author: AuthorModel(
            authorName: "Steve Udin", authorPic: "https://picsum.photos/500")),
    TweetModel(
        tweetId: 6,
        tweetText: "Hehehehe",
        commentCount: 2,
        loveCount: 1,
        retweetCount: 11,
        author: AuthorModel(
            authorName: "Sinta Waluyo",
            authorPic: "https://picsum.photos/500")),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) => TweetItem(
              tweet: tweetResult[index],
            ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: tweetResult.length);
  }
}
