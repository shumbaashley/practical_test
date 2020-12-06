import 'package:flutter/material.dart';
import 'package:grpc_app/src/client.dart';


class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LandingPage> {
  double _balance;
  bool _loading = false;
  bool _error = false;

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
                  child: _loading ? CircularProgressIndicator() : Container(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: _balance != null
                      ? Text(
                          "USD \$$_balance.",
                          // _balance,
                          style: Theme.of(context).textTheme.headline4,
                        )
                      : Container(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: _error ?
                      Text(
                          "There was some error",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w200,
                            fontSize: 20),
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
                        _displayBalance();
                      },
                    )),
              ],
            )));
  }

  Future<void> _displayBalance() async {
    // display Loader
    setState(() {
      _error = false;
      _loading = true;
      _balance = null;
    });


    // fetch balance
    var _response = await getBalance().catchError((error) {
      // if error
      setState(() {
        _loading = false;
        _balance = null;
        _error = true;
      });
    });

    // if success
    setState(() {
      _loading = false;
      _error = false;
      _balance = _response;
    });
  }

}

