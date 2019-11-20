import 'package:flutter/material.dart';
import 'package:mvvmarchexample/core/provider_setup.dart';
import 'package:mvvmarchexample/ui/views/login_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Material App',
        theme: ThemeData(),
        home: LoginView(),
      ),
    );
  }
}
