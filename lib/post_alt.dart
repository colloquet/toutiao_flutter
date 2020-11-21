import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post_actions.dart';
import 'package:toutiao_flutter/post_detail.dart';
import 'package:toutiao_flutter/post_meta.dart';

class PostAlt extends StatelessWidget {
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
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    '字节跳动谢欣：把飞书打造成配得上这个时代的工具',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      image: DecorationImage(
                        image: AssetImage("assets/images/4.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            PostActions(),
          ],
        ),
      ),
    );
  }
}
