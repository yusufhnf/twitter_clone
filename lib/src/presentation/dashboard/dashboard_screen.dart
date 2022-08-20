import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:twitter_clone/src/presentation/dashboard/tweet_item.dart';
import 'package:twitter_clone/src/presentation/models/tweet_model.dart';

part './_drawer_view.dart';
part './_tweet_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {},
          child: const Icon(
            Ionicons.create_outline,
            color: Colors.white,
          ),
        ),
        drawer: const _DrawerView(),
        body: const _TweetListView());
  }
}
