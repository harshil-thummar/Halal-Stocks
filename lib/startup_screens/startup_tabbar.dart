import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';
import 'intro.dart';
import 'login.dart';
import 'signup.dart';

class StartUpTabBar extends StatefulWidget {
  @override
  _StartUpTabBarState createState() => _StartUpTabBarState();
}

class _StartUpTabBarState extends State<StartUpTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static List<Tab> _tabs = [
    Tab(text: 'Intro'.toUpperCase()),
    Tab(text: 'SignUp'.toUpperCase()),
    Tab(text: 'Log in'.toUpperCase()),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  singUpTab() {
    setState(() {
      _tabController.index = 1;
    });
  }

  logInTab() {
    setState(() {
      _tabController.index = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Stack(
          children: [
            Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(56.0),
                child: Card(
                  elevation: 4,
                  margin: EdgeInsets.all(0),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(defaultRadius)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 7, 50, 0),
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          enableFeedback: true,
                          // physics: NeverScrollableScrollPhysics(),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: UnderlineTabIndicator(
                            borderSide:
                                BorderSide(color: buttonColor, width: 3.0),
                            insets: EdgeInsets.fromLTRB(-10, 0, -10, 5),
                          ),
                          unselectedLabelColor:
                              Theme.of(context).iconTheme.color,
                          labelColor: Theme.of(context).iconTheme.color,
                          labelStyle: Theme.of(context).textTheme.subtitle1!,
                          tabs: _tabs,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                controller: _tabController,
                // physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  IntroPage(
                    onTabSignCallBack: () => {singUpTab()},
                    onTabLoginCallBack: () => {logInTab()},
                  ),
                  SignUpPage(onTabLoginCallBack: () => {logInTab()}),
                  LoginPage(onTabSignCallBack: () => {singUpTab()}),
                ],
              ),
            ),
            // Container(
            //   color: Colors.white70,
            //   height: 58.0,
            // ),
          ],
        ),
      ),
    );
  }
}
