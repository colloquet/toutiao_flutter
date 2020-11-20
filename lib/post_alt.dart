import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post_detail.dart';

class PostAlt extends StatelessWidget {
  const PostAlt({
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
            Padding(
              padding: EdgeInsets.only(top: 8, left: 24, right: 24),
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
