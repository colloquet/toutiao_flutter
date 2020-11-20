import "dart:math";
import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post.dart';
import 'package:toutiao_flutter/post_alt.dart';
import 'package:toutiao_flutter/post_alt_2.dart';
import 'package:toutiao_flutter/story_list.dart';

class Feed extends StatelessWidget {
  const Feed({
    Key key,
    this.story = false,
  }) : super(key: key);

  final bool story;

  @override
  Widget build(BuildContext context) {
    final postTypes = [Post(), PostAlt(), PostAlt2()];

    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => story
          ? Container(height: 6.0, color: Color(0xfff2f2f2))
          : Divider(height: 1, indent: 16, endIndent: 16),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        if (story && index == 0) {
          return StoryList();
        }
        return postTypes[(index - 1) % postTypes.length];
      },
    );
  }
}
