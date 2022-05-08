import 'package:flutter/material.dart';

class Trends extends StatelessWidget {
  final String hashTag;
  const Trends({this.hashTag = "HashTag"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Text(
        hashTag,
        style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
      ),
    );
  }
}
