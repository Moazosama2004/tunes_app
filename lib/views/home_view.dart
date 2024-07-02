import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import '../widgets/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final List<TuneModel> tuneColors = const [
    TuneModel(sound: 'note1.wav', color: Color(0xfffe3f39)),
    TuneModel(sound: 'note2.wav', color: Color(0xfff49430)),
    TuneModel(sound: 'note3.wav', color: Color(0xfffbf35d)),
    TuneModel(sound: 'note4.wav', color: Color(0xff33af57)),
    TuneModel(sound: 'note5.wav', color: Color(0xff009587)),
    TuneModel(sound: 'note6.wav', color: Color(0xff0097ed)),
    TuneModel(
      sound: 'note7.wav',
      color: Color(0xff71217a),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff243139),
        title: Text('Flutter Tune'),
        centerTitle: true,
      ),
      body: Column(
        children: tuneColors
            .map((e) => TuneItem(
                  color: e.color,
                  sound: e.sound,
                ))
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItem (List<Color> Colors) {
  //   List<TuneItem> tuneItems = [];
  //
  //   for (var color in tuneColors) {
  //     tuneItems.add(TuneItem(color: color));
  //   }
  //   return tuneItems;
  // }
}
