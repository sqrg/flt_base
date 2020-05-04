import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flt_base/core/viewmodels/tab_2_viewmodel.dart';

class Tab2View extends StatefulWidget {
  @override
  Tab2ViewState createState() => Tab2ViewState();
}

class Tab2ViewState extends State<Tab2View> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Tab2ViewModel>.reactive(
        viewModelBuilder: () => Tab2ViewModel(),
        disposeViewModel: false,
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
