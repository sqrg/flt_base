import 'package:flutter/material.dart';

import 'package:flt_base/core/enums/viewstate.dart';

import 'package:flt_base/core/viewmodels/login_viewmodel.dart';

import 'package:flt_base/ui/views/z_base_view.dart';

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  final TextEditingController username = TextEditingController(text: '');
  final TextEditingController password = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, viewModel, child) => Scaffold(
          backgroundColor: Colors.indigo,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 80.0),
                  child: FlutterLogo(
                    size: 150,
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                height: 50.0,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                    decoration: InputDecoration.collapsed(hintText: 'Username'),
                    controller: username),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                height: 50.0,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                    decoration: InputDecoration.collapsed(hintText: 'Password'),
                    obscureText: true,
                    controller: password),
              ),
              viewModel.state == ViewState.Busy
                  ? CircularProgressIndicator()
                  : FlatButton(
                      color: Colors.white,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        var success =
                            await viewModel.login(username.text, password.text);

                        if (success) {
                          Navigator.pushNamed(context, '/');
                        }
                      },
                    )
            ],
          )),
    );
  }
}
