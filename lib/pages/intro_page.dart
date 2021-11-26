import 'package:rachanon_resume/page_navigations.dart';
import 'package:rachanon_resume/models/_models.dart';
import 'package:rachanon_resume/widgets/_widgets.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatelessWidget {
  final double buttonSize = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Rachanon's Website",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .apply(fontSizeFactor: 2)),
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientCircleButton(
                  tooltip: 'Test Page',
                  child: Icon(
                    Icons.warning,
                    size: buttonSize,
                  ),
                  onPressed: () =>
                      goto(page: EnumNavigations.test, context: context)),
              GradientCircleButton(
                  tooltip: 'Facebook',
                  child: Icon(Icons.facebook, size: buttonSize),
                  onPressed: () =>
                      launch('https://www.facebook.com/satter1919')),
              GradientCircleButton(
                tooltip: 'Main Page',
                child: Icon(Icons.arrow_forward, size: buttonSize),
                onPressed: () =>
                    goto(page: EnumNavigations.main, context: context),
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
              colors: <Color>[Colors.blue[800]!, Colors.pink[800]!])),
      child: child);
}
