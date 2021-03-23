import 'package:buy_ticket_flutter_app/Animation/Fade_Animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyTickets extends StatefulWidget {
  @override
  _MyTicketsState createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(26, 26, 38, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My tickets",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_alert_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.only(left: 60.0, top: 40.0),
                child: ToggleSwitch(
                  minWidth: 150.0,
                  minHeight: 40.0,
                  fontSize: 16.0,
                  initialLabelIndex: 0,
                  activeBgColor: Colors.orange,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.grey[900],
                  labels: ['Cinema', 'Concert'],
                  onToggle: (index) {},
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "tickets",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.1,
              ticket(
                  "https://cdn.pixabay.com/photo/2019/10/17/21/17/joker-4557864__480.jpg",
                  "Joker 2021"),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.1,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Upcoming",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "tickets",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.2,
              ticket(
                  "https://cdn.pixabay.com/photo/2016/01/13/22/54/man-1139066__480.jpg",
                  "Lonely Man"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ticket(String imgUrl, String name) {
  return Padding(
    padding: EdgeInsets.only(left: 20.0),
    child: Container(
      height: 230.0,
      width: 370.0,
      color: Colors.transparent,
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 142.0, top: 17.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0)),
                  height: 200.0,
                  width: 30.0,
                ),
              ),
              Container(
                height: 230.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 167.0),
                child: Container(
                  height: 230.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text("8.9",
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0)),
                                  ],
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  height: 30.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Text("IDMB 7.5"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Hakkı Can Şengönül",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
