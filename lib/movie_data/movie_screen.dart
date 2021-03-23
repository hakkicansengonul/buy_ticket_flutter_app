import 'package:flutter/material.dart';

List MovieList = [
  MoviePage("https://media.giphy.com/media/3oEjI1erPMTMBFmNHi/source.gif",
      "Game Of Thrones"),
  MoviePage("https://media.giphy.com/media/iFroHgdWtBs9LrCLJu/source.gif",
      "Fast And Furious"),
  MoviePage(
      "https://media.giphy.com/media/Pl8oWIutVj5QHwVTc7/source.gif", "Ip Man"),
];

class MoviePage extends StatelessWidget {
  final String imgUrl;
  final String name;

  const MoviePage(this.imgUrl, this.name);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange, width: 2.0),
            color: Color.fromRGBO(26, 26, 38, 1),
          ),
          child: Container(
            height: 370.0,
            width: 260.0,
            decoration: BoxDecoration(
              color: Colors.orange,
              //borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 230.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            "8.3",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                      Container(
                        height: 33.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                            child: Text(
                          "IMDB 7.5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    height: 80.0,
                    width: 300.0,
                    // color: Colors.red,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          Text(
                            "2021",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
