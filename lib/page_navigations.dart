import 'package:flutter/material.dart';
import 'package:rachanon_resume/pages/_pages.dart';
import 'models/_models.dart';

void goto({required EnumNavigations page, required BuildContext context}) {
  if (page == EnumNavigations.test) {
    Navigator.pushNamed(context, enumNavigationsToString(page));
  } else if (page == EnumNavigations.main) {
    Navigator.pushNamed(context, enumNavigationsToString(page));
  } else {
    Navigator.pushNamed(context, '/');
  }
}

class PageNavigations extends StatefulWidget {
  @override
  _PageNavigationsState createState() => _PageNavigationsState();
}

class _PageNavigationsState extends State<PageNavigations> {
  String title = "Rachanon's Web";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeMock(context).theme,
      onGenerateRoute: (settings) {
        return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/grunge-paint-background_1409-1337.jpg?size=626&ext=jpg'),
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.black45, BlendMode.darken),
                      ),
                    )),
                    _getPageWidget(settings: settings),
                  ],
                ),
            transitionsBuilder: (_, anim, __, child) {
              return FadeTransition(
                opacity: anim,
                child: child,
              );
            });
      },
    );
  }

  Widget _getPageWidget({required RouteSettings settings}) {
    if (settings.name == null) {
      return Eror404Page();
    }
    final uri = Uri.parse(settings.name ?? '');
    // print('test');
    print(uri);
    switch (uri.path) {
      case '/':
        return IntroPage();
      case '/test':
        return MyHomePage(title: title);
      case '/main':
        return MainPage();
      default:
        return Eror404Page();
    }
  }
}
