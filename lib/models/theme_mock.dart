import 'package:flutter/material.dart';

class ThemeMock {
  final ThemeData theme;

  ThemeMock(BuildContext context)
      : theme = ThemeData(
            fontFamily: 'Sarabun',
            textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 0),
                  ),
                ],
              ),
              headline2: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.black,
              ),
              headline3: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.black,
              ),
              headline4: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Theme.of(context).accentColor,
              ),
              headline5: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.grey,
              ),
              headline6: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.green,
              ),
              bodyText1: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
              ),
              bodyText2: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
              ),
              caption: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.black,
              ),
              button: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.white,
              ),
              overline: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontFamily: 'Sarabun',
                color: Colors.red,
              ),
            ),
            buttonTheme: ButtonThemeData(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              buttonColor: Colors.blueGrey, // <-- Button color
              focusColor: Colors.white,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shape: CircleBorder(),
                padding: EdgeInsets.all(10),
                primary: Colors.white, // <-- Button color
                onPrimary: Colors.white, // <-- Splash color
              ),
            ));
}
