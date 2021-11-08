import 'package:flutter/material.dart';
import 'package:rachanon_resume/page_navigations.dart';

import 'package:rachanon_resume/models/_models.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Intro page kub',
          style: TextStyle(
              inherit: false,
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: Icon(Icons.translate_outlined),
                onPressed: () =>
                    goto(page: EnumNavigations.test, context: context)),
            ElevatedButton(
                child: Icon(Icons.touch_app),
                onPressed: () =>
                    goto(page: EnumNavigations.main, context: context)),
          ],
        )
      ],
    );
  }
}
