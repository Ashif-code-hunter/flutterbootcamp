import 'package:flutter/material.dart';

class NewsSection extends StatelessWidget {
  final String section;
  const NewsSection({this.section = "News"});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(
        section,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        elevation: MaterialStateProperty.all(5.0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 25.0),
        ),
      ),
    );
  }
}

