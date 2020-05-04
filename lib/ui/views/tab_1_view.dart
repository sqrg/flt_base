import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flt_base/core/viewmodels/tab_1_viewmodel.dart';

class Tab1View extends StatefulWidget {
  @override
  Tab1ViewState createState() => Tab1ViewState();
}

class Tab1ViewState extends State<Tab1View> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Tab1ViewModel>.reactive(
        viewModelBuilder: () => Tab1ViewModel(),
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
