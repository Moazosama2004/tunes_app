import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main () {
  runApp(TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
