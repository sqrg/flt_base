import 'package:flt_base/core/viewmodels/z_base_viewmodel.dart';

class MainViewModel extends BaseViewModel {
  int currentTabIndex = 0;

  void changeTab(int index) {
    currentTabIndex = index;
    notifyListeners();
  }
}