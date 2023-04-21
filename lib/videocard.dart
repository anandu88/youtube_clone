import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:timeago_flutter/timeago_flutter.dart' as timeago;
import 'package:youtube_clone/Homepage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data.dart';

class Videocard extends StatelessWidget {
  final Video video;
  final bool hasPadding;
  final VoidCallback? onTap;

  const Videocard({
    Key? key,
    required this.video,
    this.hasPadding = false,
    this.onTap,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(height: 220,
            width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(video.thumbnailUrl),
                fit: BoxFit.cover),
                
    
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: 
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(5),
              child: Text(video.duration,
              style: TextStyle(color: Colors.white,),),
            ),),
            
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(video.author.profileimageurl), 
            ),
            Expanded(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(video.title,maxLines: 2,overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Text("${video.author.username}.${video.viewCount}views.${timeago.format(video.timestamp)}",
                  maxLines: 2,overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14),),
                  
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
          ],
        )
      ],
    
    );
  }
}