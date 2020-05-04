import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flt_base/ui/views/tab_1_view.dart';
import 'package:flt_base/ui/views/tab_2_view.dart';
import 'package:flt_base/ui/views/tab_3_view.dart';

import 'package:flt_base/core/viewmodels/main_viewmodel.dart';

class MainView extends StatefulWidget {
  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  var tabsList = [
    Tab1View(),
    Tab2View(),
    Tab3View(),
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: () => MainViewModel(),
        builder: (context, viewModel, child) => DefaultTabController(
            length: tabsList.length,
            child: Scaffold(
                appBar: AppBar(
                  title: Text('FLT Base Project'),
                  centerTitle: true,
                  leading: Container(),
                ),
                body: TabBarView(children: tabsList),
                bottomNavigationBar: TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.work),
                      text: 'Tab 1',
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: 'Tab 2',
                    ),
                    Tab(
                      icon: Icon(Icons.phone),
                      text: 'Tab 3',
                    ),
                  ],
                  labelColor: Colors.indigo,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.indigo,
                ))));
  }
}
