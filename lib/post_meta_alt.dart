import 'package:flutter/material.dart';

class PostMetaAlt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Color(0xfff5f5f5),
            border: Border.all(color: Color(0xffeeeeee)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/feishu-logo.jpg'),
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
            borderRadius: BorderRadius.all(Radius.circular(5)),
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
    );
  }
}
