import 'package:flutter/material.dart';
import 'package:social_media_app/screens/post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
