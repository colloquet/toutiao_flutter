import 'package:flutter/material.dart';
import 'package:toutiao_flutter/post_actions.dart';
import 'package:toutiao_flutter/post_detail.dart';
import 'package:toutiao_flutter/post_gallery.dart';
import 'package:toutiao_flutter/post_meta.dart';
import 'package:toutiao_flutter/post_meta_alt.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff212121)
            : Color(0xffcccccc);

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
              decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 0.5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        PostMetaAlt(),
                        SizedBox(height: 4),
                        RichText(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                            children: [
                              TextSpan(
                                text: '#罗永浩papi酱庞博首次联名带货#',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.button!.color,
                                ),
                              ),
                              TextSpan(
                                  text:
                                      ' 【飞书新版本“π”正式发布，转发抽2人送Kindle！[玫瑰]】11月18日，字节跳动旗下企业协作平台飞书在北京举办“2020飞书未来无限大会”。字节跳动副总裁谢欣@谢欣-字节跳动在演讲中表示，进入知识经济时代，飞书致力于打造一款配得上这个时代的工具。会上，飞书推出全新版本“π”，发布独立App“飞书文档”，并在视频会议、即时沟通等功能上宣布了重大更新。@罗永浩、@papi酱 和脱口秀达人@庞博 也亮相#飞书未来无限大会#，以真实客户身份为飞书站台。关注@飞书 并转发本条，评论说说你对线上办公的看法，11月23日抽取2人，每人送Kindle一台[礼物]！抽奖详情!'),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                  PostGallery(),
                ],
              ),
            ),
            PostActions(),
          ],
        ),
      ),
    );
  }
}
