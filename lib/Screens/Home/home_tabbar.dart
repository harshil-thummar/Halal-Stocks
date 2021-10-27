import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';
import 'globar.dart';
import 'national.dart';
import 'watchlist.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  static List<Tab> _tabs = [
    Tab(text: 'WATCHLIST'.toUpperCase()),
    Tab(text: 'GLOBAL'.toUpperCase()),
    Tab(text: 'NATIONAL'.toUpperCase()),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("Hi User...!!!"),
                leading:
                    IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  SizedBox(width: 5)
                ],
                bottom: TabBar(
                  enableFeedback: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: buttonColor, width: 3.0),
                    insets: EdgeInsets.fromLTRB(-10, 0, -10, 5),
                  ),
                  unselectedLabelColor: Theme.of(context).iconTheme.color,
                  labelColor: Theme.of(context).iconTheme.color,
                  labelStyle: Theme.of(context).textTheme.subtitle1!,
                  tabs: _tabs,
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  WatchlistPage(),
                  GlobarPage(),
                  NationalPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
