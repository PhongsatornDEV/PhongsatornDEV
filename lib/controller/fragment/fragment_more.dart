import 'package:flutter/material.dart';

class MoreFragment extends StatefulWidget {
  @override
  _MoreFragmentState createState() => _MoreFragmentState();
}

class _MoreFragmentState extends State<MoreFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Text('เพิ่มเติม')
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
