import 'package:flutter/material.dart';
import 'package:screen_test/ui/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'MontserratAlternates',
      ),
      debugShowCheckedModeBanner: false,
      home: const Screen(),
    );
  }
}
