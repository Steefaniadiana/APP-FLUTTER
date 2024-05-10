import 'package:animate_do/animate_do.dart';
import 'package:app/domain/entities/video_post.dart';
import 'package:app/config/helpers/intelligibilis_forma.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({
    required this.video, 
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        _PropriumIconButton(valorem: video.likes, iconData: Icons.favorite, iconColor: Colors.pink),   
        const SizedBox(height: 20,),
        _PropriumIconButton(valorem: video.views, iconData: Icons.remove_red_eye_outlined),   
        const SizedBox(height: 20,),

        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _PropriumIconButton(valorem: 0, iconData: Icons.play_circle_outline)
        ),   
        ],
    );
  }
}


class _PropriumIconButton extends StatelessWidget {

  final int valorem; 
  final IconData iconData;
  final Color? color;

  const _PropriumIconButton({
    required this.valorem,
    required this.iconData,
    iconColor 
    }): color = iconColor ?? Colors.white ;

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        IconButton(
          onPressed: () {  }, 
          icon: Icon( iconData, color: color, size: 30,)
          ),
        if ( valorem > 0 )
        Text( IntelligibilisForma.novaFormaNumeri( valorem.toDouble() ) )
      ],
    );
  }
}