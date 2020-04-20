import 'package:flutter/foundation.dart';

import 'package:flt_base/core/enums/viewstate.dart';

class BaseViewModel extends ChangeNotifier {
  bool initialized = false;

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void initialize() {
    initialized = true;
  }

  void setState(ViewState viewState) {
    _state = viewState;

    notifyListeners();
  }
}
