import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class PickupFragment extends StatefulWidget {
  @override
  _PickupFragmentState createState() => _PickupFragmentState();
}

class _PickupFragmentState extends State<PickupFragment> {
  List mockDataPickup = [];

  @override
  void initState() {
    setDataMockup();
    super.initState();
  }

  setDataMockup() {
    mockDataPickup = [
      {
        'date': '10-10-2021',
        'name': 'มานี',
        'lastname': 'มานะ',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'สมร',
        'lastname': 'สอนใจ',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'สตีฟ',
        'lastname': 'ลูเทอร์',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'แก้ว',
        'lastname': 'ก้าน',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'มานี',
        'lastname': 'มานะ',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'สมร',
        'lastname': 'สอนใจ',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'สตีฟ',
        'lastname': 'ลูเทอร์',
        'phone': '09922221111'
      },
      {
        'date': '10-10-2021',
        'name': 'แก้ว',
        'lastname': 'ก้าน',
        'phone': '09922221111'
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: mockDataPickup.length,
        itemBuilder: (BuildContext context, int index){
          return cellDataPickup(index);
        }
      ),
        /// -- สร้าง ListView --
       );
  }

  Widget cellDataPickup(int index){
    return Padding(
      padding:  EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(10.0)),
      child: Container(
        decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(ResponsiveFlutter.of(context).moderateScale(8.0))),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.access_alarms),
                  Text('${mockDataPickup[index]['date']}')
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: ResponsiveFlutter.of(context).moderateScale(8.0),right: ResponsiveFlutter.of(context).moderateScale(8.0),bottom: ResponsiveFlutter.of(context).moderateScale(8.0)),
              child: Row(
                children: [
                  Icon(Icons.ac_unit,size: 100,color: Colors.red,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ชื่อ : ${mockDataPickup[index]['name']} ${mockDataPickup[index]['lastname']}'),
                      Text('เบอร์โทรษัพท์ : ${mockDataPickup[index]['phone']}')
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
