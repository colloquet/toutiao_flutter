import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffcccccc)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              border: Border.all(color: Color(0xffeeeeee)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:
                                  Image.asset('assets/images/feishu-logo.jpg'),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text('飞书'),
                          SizedBox(width: 4),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Color(0xffffcf09),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '飞书官方账号',
                            style: TextStyle(
                              color: Color(0xffa1a1a1),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        '#罗永浩papi酱庞博首次联名带货#【飞书新版本“π”正式发布，转发抽2人送Kindle！[玫瑰]】11月18日，字节跳动旗下企业协作平台飞书在北京举办“2020飞书未来无限大会”。字节跳动副总裁谢欣@谢欣-字节跳动在演讲中表示，进入知识经济时代，飞书致力于打造一款配得上这个时代的工具。会上，飞书推出全新版本“π”，发布独立App“飞书文档”，并在视频会议、即时沟通等功能上宣布了重大更新。@罗永浩、@papi酱 和脱口秀达人@庞博 也亮相#飞书未来无限大会#，以真实客户身份为飞书站台。关注@飞书 并转发本条，评论说说你对线上办公的看法，11月23日抽取2人，每人送Kindle一台[礼物]！抽奖详情',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width - 32 - 2,
                  child: GridView.count(
                    primary: false,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/4.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
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
    );
  }
}
