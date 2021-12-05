import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text('หน้าแรก')
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
