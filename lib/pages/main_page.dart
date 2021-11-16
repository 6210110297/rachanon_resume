import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35),
      alignment: Alignment.topCenter,
      child: Text(
        'Rachanon Khongchai',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
