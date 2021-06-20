import 'package:flutter/material.dart';
import 'package:flutter_front/screens/events.dart';
import 'package:flutter_front/screens/membership.dart';
import 'package:flutter_front/screens/store.dart';
import 'package:flutter_front/screens/transactions.dart';
import 'package:flutter_front/screens/voucher.dart';
import 'package:flutter_front/screens/widgets/constants.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectIndex = 0;
  List<Widget> widgetList = <Widget>[
    Membership(),
    Voucher(),
    Store(),
    Transactions(),
    Events(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: mainColor,
        unselectedItemColor: mainColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: mainColor),
            label: 'Membership',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Event',
          ),
        ],
        backgroundColor: Colors.white,
        currentIndex: _selectIndex,
        onTap: _onItemTap,
      ),
    );
  }
  
}
