import 'package:buy_ticket_flutter_app/screens/home_screen.dart';
import 'package:buy_ticket_flutter_app/screens/my_tickets_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeHome extends StatefulWidget {
  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.orange,
        index: 0,
        backgroundColor: Color.fromRGBO(26, 26, 38, 1),
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.preview_outlined,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.confirmation_num_outlined,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            newindex = index;
          });
        },
      ),
      body: newindex == 0 ? HomePage() : MyTickets(),
    );
  }
}
