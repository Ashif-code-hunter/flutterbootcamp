import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
   var title;
   var path;
  NewsCard({Key? key, this.title = "NEWS TITLE", this.path ="IMAGE PATH"}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  String defaultImagePath="http://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/No-Whatsapp-Dp-Images-6.jpg";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: NetworkImage(widget.path== null ? widget.path=defaultImagePath : widget.path ),
                  fit: BoxFit.cover,
                ),
                //color: const Color(0xaa000000),
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0.0),
                    Colors.black,
                  ],
                  stops: const [0.0, 1.0],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
