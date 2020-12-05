import "package:flutter/material.dart";
import 'package:grpc_app/screens/Landing_Screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: LandingPage());
  }
}