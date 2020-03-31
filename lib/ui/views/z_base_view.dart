import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'package:flt_base/locator.dart';

import 'package:flt_base/core/viewmodels/z_base_viewmodel.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T viewModel, Widget child)
      builder;
  final Function(T) onViewModelReady;

  BaseView({this.builder, this.onViewModelReady});

  @override
  BaseViewState<T> createState() => BaseViewState<T>();
}

class BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T viewModel = locator<T>();

  @override
  void initState() {
    if (widget.onViewModelReady != null) {
      widget.onViewModelReady(viewModel);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // See: https://github.com/rrousselGit/provider/issues/168#issuecomment-514350353
    return ChangeNotifierProvider<T>.value(
        value: viewModel,
        child: Consumer<T>(builder: widget.builder));
  }
}
