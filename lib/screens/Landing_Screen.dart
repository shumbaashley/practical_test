import 'package:flutter/material.dart';
import 'package:grpc_app/src/client.dart';
import 'package:grpc_app/protos/users.pb.dart';
import 'package:grpc_app/protos/users.pbgrpc.dart';
import 'dart:convert';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LandingPage> {
  double _balance;
  double _result;
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('gRPC App Demo'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: _loading
                      ? CircularProgressIndicator()
                      : Container(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: _balance != null
                      ? Text(
                          "You have \$$_balance.",
                          // _balance,
                          style: Theme.of(context).textTheme.headline4,
                        )
                      : Container(),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Display Balance'),
                      onPressed: () async {
                        setState(() {
                          _loading = true;
                        });
                        _result = await displayBalance();
                        setState(() {
                          _loading = false;
                          _balance = _result;
                        });
                      },
                    )),
              ],
            )));
  }
}
