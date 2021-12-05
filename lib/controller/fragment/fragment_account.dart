import 'package:flutter/material.dart';

class AccountFragment extends StatefulWidget {
  @override
  _AccountFragmentState createState() => _AccountFragmentState();
}

class _AccountFragmentState extends State<AccountFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Text('บัญชี')
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
