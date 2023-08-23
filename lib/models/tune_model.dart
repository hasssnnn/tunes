import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel{
  
  final String tuneName;
  final Color tuneColor;
 const TuneModel({required this.tuneColor, required this.tuneName});

 playSound()async{
  final audioPlayer = AudioPlayer();
  await audioPlayer.play(AssetSource(tuneName));

 }
}