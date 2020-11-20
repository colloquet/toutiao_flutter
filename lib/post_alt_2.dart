import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post_detail.dart';

class PostAlt2 extends StatelessWidget {
  const PostAlt2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    border: Border.all(color: Color(0xffeeeeee)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset('assets/images/bytedance-logo.jpg'),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '字节跳动',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '昨天 15:44 · 字节跳动官方账号',
                      style: TextStyle(
                        color: Color(0xffa1a1a1),
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
            Padding(
              padding: EdgeInsets.only(top: 16, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.share, size: 20),
                      SizedBox(width: 8),
                      Text('分享'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment_outlined, size: 20),
                      SizedBox(width: 8),
                      Text('15'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up_outlined, size: 20),
                      SizedBox(width: 8),
                      Text('80'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
