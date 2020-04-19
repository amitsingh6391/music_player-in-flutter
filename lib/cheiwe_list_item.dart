import "package:flutter/material.dart";
import "package:chewie/chewie.dart";
import 'package:flutter/rendering.dart';
import "package:video_player/video_player.dart";
class chewielistitem extends StatefulWidget {
  
  final VideoPlayerController  videoPlayerController;
  final bool looping;  

  chewielistitem({
    @required this.videoPlayerController,
    this.looping,
    Key key,

  }) : super(key:key);



  @override
  _chewielistitemState createState() => _chewielistitemState();
}

class _chewielistitemState extends State<chewielistitem> {
  ChewieController _chewieController;

  @override

  void initState(){
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16/9,
      autoInitialize: true,
      looping: widget.looping);


    //   errorBuilder: (context errorMessage){
    //      return
    //      Center(
    //        child:Text(eroorMessage,
    //        style: TextStyle(color:Colors.white),
    //        ),
    //      );


    //   },
    // );
  }
  Widget build(BuildContext context) {
    return
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Chewie(
        
        controller: _chewieController,
    ),
     );
  }
  @override
  void dispose(){
    super.dispose();

    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}