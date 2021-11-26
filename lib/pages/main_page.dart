import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(35),
          alignment: Alignment.topCenter,
          child: Text(
            'Rachanon Khongchai',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          // child: NetworkImage(),
        )
      ],
    );
  }
}
