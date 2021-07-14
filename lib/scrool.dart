import 'dart:ffi';
import 'dart:ui';

import 'package:fitness_diet/seg/breakfast.dart';
import 'package:fitness_diet/seg/dinner.dart';
import 'package:fitness_diet/seg/lunch.dart';
import 'package:fitness_diet/ui/pages/profile.dart';
import 'package:flutter/material.dart';

class Scrool extends StatefulWidget {
  @override
  _Scrool createState() => _Scrool();
}

class _Scrool extends State<Scrool> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: const Color(0xff192060),
              foregroundColor: const Color(0xFFE9E9E9),
              pinned: true,
              floating: true,
              forceElevated: boxIsScrolled,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "BreakFast",
                    icon: Icon(Icons.free_breakfast_rounded),
                  ),
                  Tab(
                    text: "Lunch",
                    icon: Icon(Icons.lunch_dining_rounded),
                  ),
                  Tab(
                    text: "Dinner",
                    icon: Icon(Icons.dining_rounded),
                  )
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            BreakFast(),
            Lunch(),
            Dinner(),
          ],
          controller: _tabController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.control_point),
        onPressed: () {
          _tabController.animateTo(1,
              curve: Curves.bounceInOut, duration: Duration(milliseconds: 10));

          _scrollViewController
              .jumpTo(_scrollViewController.position.maxScrollExtent);
        },
      ),
    );
  }
}
