import 'package:flutter/material.dart';

class PostGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: IgnorePointer(
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
      ),
    );
  }
}
