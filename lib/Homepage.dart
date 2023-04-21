// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/data.dart';
import 'package:youtube_clone/videocard.dart';


final selectedvideoprovider=StateProvider((ref) => null);

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
       body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(pinned: true,
          floating: true,
          leading: const Padding(
            padding: EdgeInsets.only(top: 14.8,
            left: 10
            ),
            child: FaIcon(FontAwesomeIcons.youtube),
          ),titleSpacing: 20,
          title: Text('YouTube'),
          leadingWidth: 20,
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.cast)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
            IconButton(onPressed:(){} , icon: Icon(Icons.search)),
            CircleAvatar(backgroundImage:
             NetworkImage(
              "https://image.winudf.com/v2/image/Y29tLmJhbGVmb290Lk1vbmtleURMdWZmeVdhbGxwYXBlcl9zY3JlZW5fMF8xNTI0NTE5MTEwXzAyOA/screen-0.jpg?h=500&fakeurl=1&type=.jpg"),),


          ],
          

          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index){
            final Video=videos[index];
            return Videocard(video: Video,);
            
            }, 
            childCount: videos.length,
            )
            ),
        ],
       ),
       bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
       
        items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},
         icon: Icon(Icons.home_outlined)),
        label: "Home"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},
         icon:Icon(Icons.video_collection_outlined) ),
        label: "shorts"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, 
        icon: Icon(Icons.add_circle_outline)),
        label: "add"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, 
        icon: Icon(Icons.subscriptions_outlined)),
        label: "subscribtions"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},
         icon: Icon(Icons.video_collection_outlined)),
        label: "libary")
       ]),
       
      ));
  }
}