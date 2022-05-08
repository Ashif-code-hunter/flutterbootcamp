import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_clg/news.dart';
import 'news_card.dart';

class homepage extends StatefulWidget {
  dynamic newsTitles;
  homepage({this.newsTitles="News"});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 50,
        color: Color(0xffe1e2e3),
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:NetworkImage(widget.newsTitles["articles"][0]["urlToImage"] ),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 15),
                      child: Text(
                        widget.newsTitles["articles"][0]["title"],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2B4F95),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 30,right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: const <Widget>[
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                      size: 26.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 26.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 10, ),
                child: const ListTile(
                  leading: Text(
                    'Breaking News',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2B4F95),
                    ),
                  ),
                  trailing: Text(
                    'More',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B4F95)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 30.0),
                height: 270.0,
                child:
                ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                  for(int i=1;i<widget.newsTitles["articles"].length;i++)
                    NewsCard(
                         path: widget.newsTitles["articles"][i]["urlToImage"],
                         title: widget.newsTitles["articles"][i]["title"],
                     ),

                   ],
                 ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
