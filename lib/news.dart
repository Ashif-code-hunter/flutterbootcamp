import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:news_clg/news_card.dart';
import 'news_section.dart';
import 'trends.dart';

class News extends StatefulWidget {
  dynamic newsTitles;
  News({Key? key, this.newsTitles = "The News Title goes here"}) : super(key: key);
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<Widget> newses = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "HashShorts",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Trends",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: const [
                        Trends(
                          hashTag: "#COVID19",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#IPL2020",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Coronavaccine",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Technology",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Neet",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Bills",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: const [
                        NewsSection(
                          section: "Sports",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "Politics",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "Cinema",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "IT",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "Corona",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal:0),
                     title: NewsCard(title: widget.newsTitles['articles'][index]['title'],
                      path: widget.newsTitles['articles'][index]['urlToImage'],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 60,
        color: const Color(0xffe1e2e3),
        backgroundColor: Colors.white,
        items: const <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
