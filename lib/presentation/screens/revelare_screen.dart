// import 'package:app/data/local_video_post.dart';
// import 'package:app/domain/entities/video_post.dart';
// import 'package:app/presentation/widgets/video_scrollable_view.dart';
import 'package:app/presentation/providers/revelare_provider.dart';
import 'package:app/presentation/widgets/video_scrollable_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


 class RevelareScreen extends ConsumerWidget {
   const RevelareScreen({super.key});
 
   @override
   Widget build(BuildContext context, WidgetRef ref ) {
    final revelareProviderAsync = ref.watch( revelareProvider );

     
     return Scaffold(
      body: revelareProviderAsync.when( 
        data: (videos) => VideoScrollableView(videos: videos),
        error: (error, stackTrace) => Text('$error'),
        loading:() => const Center (child: CircularProgressIndicator(),)
      ),
     );
   }
 }

// class RevelareScreen extends StatefulWidget {
//   const RevelareScreen({super.key});

//   @override
//   State<RevelareScreen> createState() => _RevelareScreenState();
// }

// class _RevelareScreenState extends State<RevelareScreen> {

//   bool satusPortantes = true;

//   List<VideoPost> videos = [];

//     Future<void> portamProximamPaginam() async {

//       await Future.delayed( const Duration(seconds: 2) );
//       //videos.addAll( videoPosts );
//       satusPortantes = false;
//       setState(() {

//       });

//     }

//     @override
//     void initState() {
//       portamProximamPaginam();
//       super.initState();
//     }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: satusPortantes 
//       ? const Center( child: CircularProgressIndicator( strokeWidth: 2 ), )
//       :  VideoScrollableView( videos: videos) 
//     );
//   }
// }
