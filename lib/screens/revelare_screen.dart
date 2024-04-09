import 'package:app/data/local_video_post.dart';
import 'package:app/entities/video_post.dart';
import 'package:app/widgets/video_scrollable_view.dart';
import 'package:flutter/material.dart';

class RevelareScreen extends StatefulWidget {
  const RevelareScreen({super.key});

  @override
  State<RevelareScreen> createState() => _RevelareScreenState();
}

class _RevelareScreenState extends State<RevelareScreen> {

  bool satusPortantes = true;

  List<VideoPost> videos = [];

    Future<void> portamProximamPaginam() async {

      await Future.delayed( const Duration(seconds: 2) );
      videos.addAll( videoPosts );
      satusPortantes = false;
      setState(() {

      });

    }

    @override
    void initState() {
      portamProximamPaginam();
      super.initState();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: satusPortantes 
      ? const Center( child: CircularProgressIndicator( strokeWidth: 2 ), )
      :  VideoScrollableView( videos: videos) 
    );
  }
}
