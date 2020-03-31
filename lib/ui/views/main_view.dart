import 'package:flutter/material.dart';

import 'package:flt_base/core/viewmodels/main_viewmodel.dart';

import 'package:flt_base/ui/views/tab_1_view.dart';
import 'package:flt_base/ui/views/tab_2_view.dart';
import 'package:flt_base/ui/views/tab_3_view.dart';

import 'package:flt_base/ui/views/z_base_view.dart';

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
    return BaseView<MainViewModel>(
        builder: (context, viewModel, child) => DefaultTabController(
            length: 3,
            child: Scaffold(
              body: tabsList[viewModel.currentTabIndex],
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: viewModel.currentTabIndex,
                onTap: (index) {
                  viewModel.changeTab(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Tab 1'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    title: Text('Tab 2'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Text('Tab 3'),
                  ),
                ],
              ),
            )));
  }
}
