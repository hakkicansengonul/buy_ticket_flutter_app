import 'package:buy_ticket_flutter_app/Animation/Fade_Animation.dart';
import 'package:buy_ticket_flutter_app/movie_data/movie_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            //   color: Color.fromRGBO(26, 26, 38, 1),
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.giphy.com/media/J5eNPLvP7k95mm3i74/source.gif"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeAnimation(
                    1.0,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Hakkı!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        Text(
                          "Book your favorite movie",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  FadeAnimation(
                    1.0,
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.0),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FadeAnimation(
                1.0,
                TextField(
                  controller: TextEditingController(),
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    fillColor: Colors.orange,
                    suffixIcon: Icon(
                      Icons.mic_none,
                      color: Colors.orange,
                    ),
                    focusColor: Colors.orange,
                    hoverColor: Colors.orange,
                    helperStyle: TextStyle(color: Colors.orange),
                    prefixIcon: Icon(
                      Icons.menu,
                      color: Colors.orange,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.orange),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 3.0),
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 3.0),
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            FadeAnimation(
              1.1,
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Feature",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 500.0,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                // color: Colors.blue,
                child: Swiper(
                    layout: SwiperLayout.CUSTOM,
                    customLayoutOption:
                        CustomLayoutOption(startIndex: -1, stateCount: 3)
                            .addRotate(
                                [-45.0 / 880, 0.0, 45.0 / 880]).addTranslate([
                      new Offset(-300.0, -40.0),
                      new Offset(0.0, 0.0),
                      new Offset(300.0, -40.0)
                    ]),
                    itemWidth: 250.0,
                    itemHeight: 375.0,
                    itemBuilder: (context, index) {
                      return MovieList[index];
                    },
                    itemCount: MovieList.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
