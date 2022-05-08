import 'package:flutter/material.dart';
import 'models/loading.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
    home: const LoadingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
