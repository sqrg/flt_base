import 'package:flutter/material.dart';

import 'package:flt_base/core/viewmodels/tab_3_viewmodel.dart';

import 'package:flt_base/ui/views/z_base_view.dart';

class Tab3View extends StatefulWidget {
  @override
  Tab3ViewState createState() => Tab3ViewState();
}

class Tab3ViewState extends State<Tab3View> {
  @override
  Widget build(BuildContext context) {
    return BaseView<Tab3ViewModel>(
        builder: (context, viewModel, child) => Scaffold(
              body: Center(
                  child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                child: Text(
                  viewModel.tabTitle,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.indigo,
              )),
            ));
  }
}
