import 'package:flutter/material.dart';

class StoryList extends StatelessWidget {
  const StoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: EdgeInsets.all(12),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          String img = index % 2 == 0
              ? 'assets/images/bytedance-logo.jpg'
              : 'assets/images/feishu-logo.jpg';
          String name = index % 2 == 0 ? '字节跳动' : '飞书';
          return Column(
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  border: Border.all(color: Color(0xffff8f52), width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Image.asset(img),
                ),
              ),
              SizedBox(height: 8),
              Text(name, style: TextStyle(fontSize: 12, height: 1)),
            ],
          );
        },
      ),
    );
  }
}
