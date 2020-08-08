import 'package:flutter/material.dart';

import './demo/listview_demo.dart';
import './demo/hello_demo.dart';
import './demo/draw_demo.dart';
import './demo/bottom_navigitionbar_demo.dart';
import './demo/basic_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            ),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigitionBarDemo(),
      ),
    );
  }
}
