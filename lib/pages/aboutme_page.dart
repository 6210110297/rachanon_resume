import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 200,
              child: Image.network(
                  'https://raw.githubusercontent.com/6210110297/rachanon_resume/master/assets/pictures/cool_pic.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Rachanon Khongchai',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .apply(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
