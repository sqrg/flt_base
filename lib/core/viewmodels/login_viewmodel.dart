import 'package:flt_base/core/enums/viewstate.dart';
import 'package:flt_base/core/services/authentication_service.dart';
import 'package:flt_base/core/viewmodels/z_base_viewmodel.dart';
import 'package:flt_base/locator.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService = locator<AuthenticationService>();

  Future<bool> login(String username, String password) async {
    setState(ViewState.Busy);

    var success = await _authenticationService.login(username, password);

    setState(ViewState.Idle);

    return success;
  }
}