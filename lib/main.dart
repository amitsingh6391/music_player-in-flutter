import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import "cheiwe_list_item.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "video player",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomepage(),
    );
  }
}
class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Video player"),
     ), 
     body: ListView(
       children:<Widget>[
         chewielistitem(
           videoPlayerController:VideoPlayerController.asset(
             "videos/myvideo.mp4",
           ),
           looping: true,

           ),
           chewielistitem(
           videoPlayerController:VideoPlayerController.network(
             "http://commondatastorage.googleapics.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
           ),
           looping: true,

           ),
           chewielistitem(
           videoPlayerController:VideoPlayerController.asset(
             "http://commondatastorage.googleapics.com/gtv-videos-bucket/sample/BigBuck.mp4",
           ),
           looping: true,

           ),
           
           


       ]
     ),
 
    );
  }
}
