import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color cardBackgroundColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff282828)
            : Colors.white;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset('assets/images/avatar.png'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'colloque',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Text(
                  '个人主页 >',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '头条',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '获赞',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '粉丝',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '关注',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: Theme.of(context).accentColor,
                          size: 28,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '消息通知',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_outline,
                          color: Theme.of(context).accentColor,
                          size: 28,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '收藏',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Theme.of(context).accentColor,
                          size: 28,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '浏览历史',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(
                          Icons.get_app_outlined,
                          color: Theme.of(context).accentColor,
                          size: 28,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '下载管理',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('再小的想法，都值得被记录'),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).accentColor),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: 16,
                            color: Theme.of(context).accentColor,
                          ),
                          Text(
                            '发布',
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '更多服务',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '用户反馈',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '钱包',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '评论',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.thumb_up_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '点赞',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.brightness_2_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '深色模式',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.emoji_objects_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '创作中心',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.list_alt_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '订单',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 28,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '购物车',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
