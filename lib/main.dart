import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toutiao_flutter/feed_list.dart';
import 'package:toutiao_flutter/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    TabBarView(
      children: [
        Feed(
          story: true,
        ),
        Feed(),
        Feed(),
        Feed(),
        Feed(),
        Feed(),
        Feed(),
        Feed(),
        Feed(),
        Feed(),
      ],
    ),
    Center(
      child: Text(
        '西瓜视频',
      ),
    ),
    Center(
      child: Text(
        '放映厅',
      ),
    ),
    Profile(),
  ];

  void _onItemTapped(int index) {
    HapticFeedback.lightImpact();
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: _selectedIndex == 3 ? Color(0xfff8f8f8) : Colors.white,
        appBar: _selectedIndex == 3
            ? AppBar(
                brightness: Brightness.light,
                leading: Icon(
                  Icons.qr_code_outlined,
                  color: Colors.black,
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.mail_outline, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.settings_outlined, color: Colors.black),
                  ),
                ],
                backgroundColor: Color(0xfff8f8f8),
                elevation: 0,
              )
            : AppBar(
                elevation: 0,
                title: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '苹果承认新机存问题｜小米 POCO M3苹果承认新机存问题｜小米 POCO M3',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text('发布', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ],
                ),
                backgroundColor: Color(0xffe54a43),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(color: Color(0xfff3f3f3))),
                          ),
                          height: 40,
                          child: TabBar(
                            unselectedLabelColor: Colors.black,
                            labelColor: Color(0xffe54a43),
                            unselectedLabelStyle:
                                TextStyle(fontWeight: FontWeight.normal),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 14),
                            labelPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 8),
                            isScrollable: true,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(text: '关注'),
                              Tab(text: '推荐'),
                              Tab(text: '热榜'),
                              Tab(text: '上海'),
                              Tab(text: '国际'),
                              Tab(text: '科技'),
                              Tab(text: '娱乐'),
                              Tab(text: '要闻'),
                              Tab(text: '游戏'),
                              Tab(text: '数码'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xfff04142),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '头条',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_outlined),
              label: '西瓜视频',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_outlined),
              label: '放映厅',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '我的',
            ),
          ],
        ),
      ),
    );
  }
}
