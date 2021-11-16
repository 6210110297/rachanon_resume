import 'package:rachanon_resume/page_navigations.dart';
import 'package:rachanon_resume/models/_models.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Intro page kub', style: Theme.of(context).textTheme.headline1),
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tooltip(
                message: 'Test Page',
                child: ElevatedButton(
                    child: Icon(Icons.warning),
                    onPressed: () =>
                        goto(page: EnumNavigations.test, context: context)),
              ),
              Tooltip(
                message: 'Facebook',
                child: ElevatedButton(
                    child: Icon(Icons.facebook),
                    onPressed: () =>
                        launch('https://www.facebook.com/satter1919')),
              ),
              Tooltip(
                message: 'First Page',
                child: ElevatedButton(
                    child: Icon(Icons.arrow_forward),
                    onPressed: () =>
                        goto(page: EnumNavigations.main, context: context)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
