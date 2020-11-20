import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post.dart';
import 'package:toutiao_flutter/story_list.dart';

class Feed extends StatelessWidget {
  const Feed({
    Key key,
    this.story = false,
  }) : super(key: key);

  final bool story;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          Container(height: 6.0, color: Color(0xfff2f2f2)),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        if (story && index == 0) {
          return StoryList();
        }
        return Post();
      },
    );
  }
}
