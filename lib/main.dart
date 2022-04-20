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
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Colors.white,
          accentColor: Color(0xffe54a43),
          textTheme: TextTheme(
            button: TextStyle(color: Color(0xff406599)),
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Color(0xff121212),
          accentColor: Color(0xfffe5f5f),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Color(0xffaeaeae)),
            bodyText2: TextStyle(color: Color(0xffaeaeae)),
            button: TextStyle(color: Color(0xff3778de)),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xff141414),
          ),
        ),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

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
    Color textColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xffaeaeae)
            : Colors.black;
    Color iconColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff8f8f8f)
            : Colors.white;
    Color borderColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff1b1b1b)
            : Color(0xfff3f3f3);
    Color indicatorColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Theme.of(context).accentColor
            : Colors.red;
    Color profileAppBarColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff1a1a1a)
            : Color(0xfff8f8f8);
    Color profileBackgroundColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff1a1a1a)
            : Color(0xfff8f8f8);
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: _selectedIndex == 3
            ? profileBackgroundColor
            : Theme.of(context).backgroundColor,
        appBar: _selectedIndex == 3
            ? AppBar(
                brightness:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Brightness.dark
                        : Brightness.light,
                leading: Icon(
                  Icons.qr_code_outlined,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.mail_outline,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.settings_outlined,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ],
                backgroundColor: profileAppBarColor,
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
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark
                              ? Color(0xff282828)
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: textColor,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText:
                                        '苹果承认新机存问题｜小米 POCO M3苹果承认新机存问题｜小米 POCO M3',
                                    hintStyle: TextStyle(color: textColor),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(0),
                                  ),
                                  // overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    height: 1,
                                  ),
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
                          color: iconColor,
                          size: 28,
                        ),
                        Text('发布',
                            style: TextStyle(fontSize: 10, color: iconColor)),
                      ],
                    ),
                  ],
                ),
                backgroundColor:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Theme.of(context).backgroundColor
                        : Theme.of(context).accentColor,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            border:
                                Border(bottom: BorderSide(color: borderColor)),
                          ),
                          height: 40,
                          child: TabBar(
                            unselectedLabelColor: textColor,
                            labelColor: Theme.of(context).accentColor,
                            unselectedLabelStyle:
                                TextStyle(fontWeight: FontWeight.normal),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 14),
                            labelPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 8),
                            isScrollable: true,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: indicatorColor,
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
              icon: Icon(Icons.home_outlined),
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
