import 'package:get_it/get_it.dart';

import 'package:flt_base/core/services/authentication_service.dart';
import 'package:flt_base/core/viewmodels/login_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => AuthenticationService());
  
  locator.registerLazySingleton(() => LoginViewModel());
}