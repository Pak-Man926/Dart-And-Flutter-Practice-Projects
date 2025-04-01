import "package:flutter/material.dart";

class Post
{
  final String username;
  final String userImageurl;
  final String timeStamp;
  final String contentText;
  final String contentImageurl;
  
  
  Post(
    {
      required this.username,
      required this.userImageurl,
      required this.timeStamp,
      required this.contentText,
      required this.contentImageurl,
    }
  );
  
}

List<Post> posts =[
  Post(
    username : "John Doe",
    userImageurl : "https://picsum.photos/250?image=237",
    timeStamp : "2h",
    contentText : "Enjoying the beautiful sunset at the beach.",
    contentImageurl : "https://picsum.photos/250?image=51"
  ),
  Post(
   username : "Mark Doe",
    userImageurl : "https://picsum.photos/250?image=238",
    timeStamp : "1d",
    contentText : "Just got back from a fun vacation in the mountains.",
    contentImageurl : "https://picsum.photos/250?image=52"
  ),
  Post(
    username : "Jack Doe",
    userImageurl : "https://picsum.photos/250?image=239",
    timeStamp : "2d",
    contentText : "Having fun.",
    contentImageurl : "https://picsum.photos/250?image=53"
  )
  
];

void main()
{
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          debugShowCheckedModeBanner: false,
          centerTitle: true,
          title: Text("Social Media App"),
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index)
          {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(posts[index].userImageurl)),
                    title: Text(posts[index].username),
                    subtitle: Text(posts[index].timeStamp)
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(posts[index].contentText)
                  ),
                  Image.network(posts[index].contentImageurl)
                ]
              )
            );
          }
        )
      )
    );
  }
}