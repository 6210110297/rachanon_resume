import 'package:flutter/material.dart';
import 'package:rachanon_resume/pages/aboutme_page.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Info'),
  Tab(text: 'About me'),
  Tab(text: 'Pupa'),
  Tab(text: 'Experience'),
  Tab(text: 'Event'),
];

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Colors.blue[800]!, Colors.pink[800]!],
              ),
            ),
            child: Scaffold(
              backgroundColor: Color.fromRGBO(255, 255, 255, 0),
              appBar: TabBar(
                tabs: tabs,
                automaticIndicatorColorAdjustment: false,
                indicatorColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: List<Widget>.generate(
                5,
                (index) => Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  child: AboutMePage(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
