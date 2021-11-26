import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 300,
          color: Color.fromRGBO(255, 255, 255, 0.5),
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   image: DecorationImage(
          //     image: NetworkImage(
          //         'https://raw.githubusercontent.com/6210110297/rachanon_resume/master/assets/pictures/cool_pic.jpg'),
          //     fit: BoxFit.contain,
          //   ),
          // ),
          child: Row(
            children: [
              Container(
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
        ),
        Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.blue[800]!, Colors.pink[800]!])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Info',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'About me',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Pupa',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Skill/Experience',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Event',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
