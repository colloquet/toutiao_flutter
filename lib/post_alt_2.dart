import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post_actions.dart';
import 'package:toutiao_flutter/post_detail.dart';
import 'package:toutiao_flutter/post_meta.dart';

class PostAlt2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostDetail()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PostMeta(),
            SizedBox(height: 4),
            Text(
              '11月18日，字节跳动旗下企业协作平台飞书在北京举办“2020飞书未来无限大会”。会上，飞书推出全新版本“π”，发布独立App“飞书文档”，并在视频会议、即时沟通等功能上宣布了重大更新。',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width - 32 - 2,
              height: (MediaQuery.of(context).size.width - 32 - 2) * 0.5625,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                image: DecorationImage(
                  image: AssetImage("assets/images/4.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            PostActions(),
          ],
        ),
      ),
    );
  }
}
