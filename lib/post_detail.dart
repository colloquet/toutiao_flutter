import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toutiao_flutter/post_comment.dart';
import 'package:toutiao_flutter/post_gallery.dart';
import 'package:toutiao_flutter/post_meta.dart';
import 'package:toutiao_flutter/post_meta_alt.dart';

class PostDetail extends StatefulWidget {
  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  ScrollController? _controller;
  bool _showHeader = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller!.addListener(() {
      if (_controller!.offset >= 50) {
        setState(() {
          _showHeader = true;
        });
      } else {
        setState(() {
          _showHeader = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff212121)
            : Color(0xffcccccc);
    Color dividerColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Colors.black
            : Color(0xfff2f2f2);
    Color replyBackgroundColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff282828)
            : Color(0xfff2f2f2);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Brightness.dark
                    : Brightness.light),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        titleSpacing: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context)
              .textTheme
              .bodyLarge!
              .color, //change your color here
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search,
                color: Theme.of(context).textTheme.bodyLarge!.color),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_horiz,
                color: Theme.of(context).textTheme.bodyLarge!.color),
          ),
        ],
        title: AnimatedOpacity(
          opacity: _showHeader ? 1.0 : 0.0,
          duration: Duration(milliseconds: 100),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  Text(
                    '197 万粉丝',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            color: borderColor,
            height: 1,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 16, right: 16, bottom: 8, left: 16),
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
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .color,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '#罗永浩papi酱庞博首次联名带货#',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(
                                          text:
                                              ' 【飞书新版本“π”正式发布，转发抽2人送Kindle！[玫瑰]】\n\n11月18日，字节跳动旗下企业协作平台飞书在北京举办“2020飞书未来无限大会”。字节跳动副总裁谢欣',
                                        ),
                                        TextSpan(
                                          text: '@谢欣-字节跳动',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(
                                            text:
                                                '在演讲中表示，进入知识经济时代，飞书致力于打造一款配得上这个时代的工具。\n\n会上，飞书推出全新版本“π”，发布独立App“飞书文档”，并在视频会议、即时沟通等功能上宣布了重大更新。'),
                                        TextSpan(
                                          text: '@罗永浩',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(text: '、'),
                                        TextSpan(
                                          text: '@papi酱',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(text: ' 和脱口秀达人'),
                                        TextSpan(
                                          text: '@庞博',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(text: ' 也亮相'),
                                        TextSpan(
                                          text: '#飞书未来无限大会#',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(text: '，以真实客户身份为飞书站台。\n\n关注'),
                                        TextSpan(
                                          text: '@飞书',
                                          style: TextStyle(
                                              color: Color(0xff406599)),
                                        ),
                                        TextSpan(
                                            text:
                                                ' 并转发本条，评论说说你对线上办公的看法，11月23日抽取2人，每人送Kindle一台[礼物]！抽奖详情!'),
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
                      SizedBox(height: 8),
                      Text('5.7万展现',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff999999))),
                    ],
                  ),
                ),
                Container(
                  height: 6,
                  color: dividerColor,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 46,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: borderColor, width: 0.5)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '转发 7',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff999999),
                        ),
                      ),
                      SizedBox(width: 40),
                      SizedBox(
                        height: 46,
                        child: Stack(
                          children: [
                            Center(
                              child: Text(
                                '评论 15',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffe54a43),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Color(0xffe54a43),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        '赞 81',
                        style: TextStyle(
                          color: Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ),
                PostComment(comment: '好用，产品，也是新的体验'),
                PostComment(comment: '太好用了'),
                PostComment(comment: '怎么可以这么好用'),
                PostComment(comment: '也太好用了吧'),
                PostComment(comment: '好用的一批'),
                PostComment(comment: '好用到爆炸'),
                Padding(
                  padding: EdgeInsets.only(left: 72, top: 32),
                  child: Text(
                    '已显示全部评论',
                    style: TextStyle(color: Color(0xff999999)),
                  ),
                ),
                SizedBox(height: 200),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 6,
                right: 4,
                bottom: 6 + MediaQuery.of(context).padding.bottom,
                left: 16,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                border: Border(top: BorderSide(color: borderColor, width: 0.5)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: replyBackgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            size: 20,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '写评论...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Stack(
                          children: [
                            Icon(
                              Icons.comment_outlined,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 4),
                                decoration: BoxDecoration(
                                  color: Color(0xffe54a43),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                ),
                                child: Text('15',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(
                          Icons.star_outline,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(
                          Icons.thumb_up_outlined,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(
                          Icons.share,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
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
