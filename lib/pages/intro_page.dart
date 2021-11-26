import 'package:rachanon_resume/page_navigations.dart';
import 'package:rachanon_resume/models/_models.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatelessWidget {
  final double buttonSize = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Intro page',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .apply(fontSizeFactor: 2.5)),
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tooltip(
                message: 'Test Page',
                child: ElevatedButton(
                    child: gradientButton(
                      child: Icon(
                        Icons.warning,
                        size: buttonSize,
                      ),
                    ),
                    onPressed: () =>
                        goto(page: EnumNavigations.test, context: context)),
              ),
              Tooltip(
                message: 'Facebook',
                child: ElevatedButton(
                    child: gradientButton(
                        child: Icon(Icons.facebook, size: buttonSize)),
                    onPressed: () =>
                        launch('https://www.facebook.com/satter1919')),
              ),
              Tooltip(
                message: 'Main Page',
                child: ElevatedButton(
                    child: gradientButton(
                        child: Icon(Icons.arrow_forward, size: buttonSize)),
                    onPressed: () =>
                        goto(page: EnumNavigations.main, context: context)),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget gradientButton({required Widget child}) => Ink(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: <Color>[Colors.blue[400]!, Colors.pink[200]!])),
      child: child);
}
