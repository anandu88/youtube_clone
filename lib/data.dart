class User {
  final String username;
  final String profileimageurl;
  final String  subscribers;

  const User(  
  
   {required this. username,
   required this. profileimageurl,
   required this. subscribers});
  
}
User currentuser =User(
  username:"MR Beast",
 
   profileimageurl: 'https://logos-world.net/wp-content/uploads/2021/09/Mr-Beast-Logo.png',

    subscribers: '3m');
    class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}
final List<Video> videos=[
  Video(id: "Mr Beast", 
  author: currentuser,
   title: "10,000 Blind People See For The First Time",
    thumbnailUrl: "https://i.ytimg.com/an_webp/TJ2ifmkGGus/mqdefault_6s.webp?du=3000&sqp=CP_0nZ8G&rs=AOn4CLAT1oZ4P52Q2VFOA8sSbbCNkfwfqQ",

     duration: "8:01",
      timestamp: DateTime(2023,1,29),
       viewCount: "107m", 
       likes: "8.2m",
        dislikes: "2313"),
        Video(id: "mr Beast",
         author: currentuser, 
         title: "I Gave My 100,000,000th Subscriber An Island", 
         thumbnailUrl: "https://i.ytimg.com/an_webp/2isYuQZMbdU/mqdefault_6s.webp?du=3000&sqp=CLHKnp8G&rs=AOn4CLDtEA5427UiwKgjBZHub7bVz0sk5A",
          duration: "15:31", 
          timestamp: DateTime(2022,8),
           viewCount: "111m",
            likes: "4.8m", 
           dislikes: "29K"),
           Video(id: "village food chanel",
            author: currentuser, 
            title: "POTATO TWISTER | Famous Indian Street Food Recipe | Spiral Fried potato Tornado", 
            thumbnailUrl: "https://i.ytimg.com/an_webp/I3P_qoY-V4A/mqdefault_6s.webp?du=3000&sqp=CICxnp8G&rs=AOn4CLA1eQ6jFEBirdie9SCWEjQAhOKurw",

            duration: "10:02",
             timestamp: DateTime(2023,2,11),
              viewCount: "82K", 
              likes: "11k", 
              dislikes: "1k"),
              
];

