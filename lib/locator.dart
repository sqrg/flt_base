import 'package:get_it/get_it.dart';

import 'package:flt_base/core/services/authentication_service.dart';

import 'package:flt_base/core/viewmodels/login_viewmodel.dart';
import 'package:flt_base/core/viewmodels/main_viewmodel.dart';
import 'package:flt_base/core/viewmodels/tab_1_viewmodel.dart';
import 'package:flt_base/core/viewmodels/tab_2_viewmodel.dart';
import 'package:flt_base/core/viewmodels/tab_3_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => AuthenticationService());
  
  locator.registerLazySingleton(() => LoginViewModel());
  locator.registerLazySingleton(() => MainViewModel());

  locator.registerLazySingleton(() => Tab1ViewModel());
  locator.registerLazySingleton(() => Tab2ViewModel());
  locator.registerLazySingleton(() => Tab3ViewModel());
}