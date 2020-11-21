import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key key,
    this.accented = false,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final bool accented;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            size: 28,
            color: accented
                ? Theme.of(context).accentColor
                : Theme.of(context).textTheme.bodyText1.color,
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
