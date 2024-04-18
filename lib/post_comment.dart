import 'package:flutter/material.dart';

class PostComment extends StatelessWidget {
  const PostComment({
    Key? key,
    required this.comment,
  }) : super(key: key);

  final String comment;

  @override
  Widget build(BuildContext context) {
    Color replyBackgroundColor =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Color(0xff282828)
            : Color(0xfff2f2f2);

    return Padding(
      padding: EdgeInsets.only(top: 16, right: 24, bottom: 0, left: 24),
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
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/avatar.png'),
                ),
              ),
              SizedBox(width: 12),
              Text('徐可乔'),
              Spacer(),
              Row(
                children: [
                  Text('2'),
                  SizedBox(width: 6),
                  Icon(
                    Icons.thumb_up_outlined,
                    size: 16,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 48),
            child: Text(comment, style: TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 48, top: 8),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: replyBackgroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Text(
                    '回复 >',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  '11-18 21:11',
                  style: TextStyle(fontSize: 12, color: Color(0xff999999)),
                ),
                Spacer(),
                Icon(Icons.clear,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
