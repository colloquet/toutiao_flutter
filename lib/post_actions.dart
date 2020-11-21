import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.share,
                size: 20,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
              SizedBox(width: 8),
              Text('分享'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.comment_outlined,
                size: 20,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
              SizedBox(width: 8),
              Text('15'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.thumb_up_outlined,
                size: 20,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
              SizedBox(width: 8),
              Text('80'),
            ],
          ),
        ],
      ),
    );
  }
}
