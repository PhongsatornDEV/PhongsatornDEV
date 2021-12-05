import 'package:flutter/material.dart';
import 'package:shipping_tool_workshop/controller/fragment/fragment_account.dart';
import 'package:shipping_tool_workshop/controller/fragment/fragment_history.dart';
import 'package:shipping_tool_workshop/controller/fragment/fragment_home.dart';
import 'package:shipping_tool_workshop/controller/fragment/fragment_more.dart';
import 'package:shipping_tool_workshop/controller/fragment/fragment_pickup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shipping Tool Workshop',
      theme: ThemeData(
          primarySwatch: Colors.red,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.grey[300],
          )),
      home: MyHomePage(title: 'Shipping Tool Workshop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List tabs;

  tabFragment() {
    tabs = [
      HomeFragment(),
      HistoryFragment(),
      PickupFragment(),
      AccountFragment(),
      MoreFragment()
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    tabFragment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: "หน้าแรก",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file),
            activeIcon: Icon(
              Icons.insert_drive_file,
              color: Colors.red,
            ),
            label: "ประวัติ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.move_to_inbox),
            activeIcon: Icon(
              Icons.move_to_inbox,
              color: Colors.red,
            ),
            label: "นัดรับ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            activeIcon: Icon(
              Icons.account_circle_sharp,
              color: Colors.red,
            ),
            label: "บัญชี",
          ),

          /// -- เพิ่มส่วนของ fragment เพิ่มเติม --
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            activeIcon: Icon(
              Icons.more_horiz,
              color: Colors.red,
            ),
            label: "เพิ่มเติม",
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
