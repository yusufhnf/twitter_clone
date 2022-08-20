import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/tweet_model.dart';

class TweetItem extends StatefulWidget {
  const TweetItem({Key? key, required this.tweet}) : super(key: key);

  final TweetModel tweet;

  @override
  State<TweetItem> createState() => _TweetItemState();
}

class _TweetItemState extends State<TweetItem> {
  late TweetModel tweet;

  @override
  void initState() {
    tweet = widget.tweet;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(tweet.author.authorPic),
            radius: 20,
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                tweet.author.authorName,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                tweet.tweetText,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconCount(
                      icon: Ionicons.chatbox_ellipses_outline,
                      count: tweet.commentCount),
                  IconCount(
                      colorActive: Colors.blue,
                      isEnable: tweet.isRetweet,
                      onTap: () {
                        setState(() {
                          tweet.isRetweet = !(tweet.isRetweet);
                          if (tweet.isRetweet == true) {
                            tweet.retweetCount += 1;
                          } else {
                            tweet.retweetCount -= 1;
                          }
                        });
                      },
                      icon: Ionicons.repeat_outline,
                      count: tweet.retweetCount),
                  IconCount(
                      colorActive: Colors.red,
                      isEnable: tweet.isLoved,
                      onTap: () {
                        setState(() {
                          tweet.isLoved = !(tweet.isLoved);
                          if (tweet.isRetweet == true) {
                            tweet.loveCount += 1;
                          } else {
                            tweet.loveCount -= 1;
                          }
                        });
                      },
                      icon: Ionicons.heart,
                      count: tweet.loveCount),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

class IconCount extends StatelessWidget {
  const IconCount(
      {Key? key,
      required this.icon,
      required this.count,
      this.onTap,
      this.isEnable = false,
      this.colorActive})
      : super(key: key);
  final IconData icon;
  final bool isEnable;
  final Color? colorActive;
  final int count;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: isEnable ? colorActive : Colors.grey,
          ),
          const SizedBox(width: 8),
          Text("$count")
        ],
      ),
    );
  }
}
