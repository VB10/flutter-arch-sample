import 'package:flutter/material.dart';
import 'package:mvvmarchexample/core/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>.value(
      value: LoginViewModel(authenticationService: Provider.of(context)),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text(model.value),
          ),
          body: Center(
            child: model.busy
                ? CircularProgressIndicator()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Login View"),
                      TextField(                        
                        onChanged: model.onChangeText,
                      ),
                      FloatingActionButton(
                        onPressed: () => model.login(model.value),
                      ),
                      TextFormField()
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
