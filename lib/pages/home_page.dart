import 'package:flutter/material.dart';
import '../components/custom_container.dart';
import '../models/tune_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(tuneColor: Color(0xfff49431), tuneName: 'note1.wav'),
    TuneModel(tuneColor: Color(0xfffbf25e), tuneName: 'note2.wav'),
    TuneModel(tuneColor: Color(0xff3dc15b), tuneName: 'note3.wav'),
    TuneModel(tuneColor: Color(0xff0da588), tuneName: 'note4.wav'),
    TuneModel(tuneColor: Color(0xff0ea0e8), tuneName: 'note5.wav'),
    TuneModel(tuneColor: Color(0xff0e10e1), tuneName: 'note6.wav'),
    TuneModel(tuneColor: Color(0xff9a10a8), tuneName: 'note7.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff20282f),
        title: const Text(
          'Tunes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: tunes.map((e) => CustemContainer(tune: e)).toList(),
      ),
    );
  }
  //flutter run -d DEVICEID

// another way to get the items
  // List<CustemContainer> getColors() {
  //   List<CustemContainer> items = [];

  //   for (var color in tuneColors) {
  //     items.add(CustemContainer(color: color));
  //   }
  //   return items;
  // }
}
