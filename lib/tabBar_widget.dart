import 'package:flutter/material.dart';
import 'package:tab_bar/settings_widget.dart';
import 'package:tab_bar/home_widget.dart';

class TabsController extends StatefulWidget {
  @override
  _TabsControllerState createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              centerTitle: true,
              title: Text('Custom TabController'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                controller: _controller,
                isScrollable: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            Anonymous(),
            Icon(
              Icons.search,
              size: 350,
            ),
            Icon(
              Icons.male,
              size: 350,
            ),
            OpenSetting(),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        onPressed: () => _controller.animateTo(_selectedIndex += 1),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
