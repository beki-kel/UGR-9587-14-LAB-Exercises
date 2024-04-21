import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => PostProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostListScreen(),
    );
  }
}

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts {
    return [..._posts];
  }

  Future<void> fetchAndSetPosts() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';
    try {
      final response = await http.get(Uri.parse(url));
      final extractedData = json.decode(response.body) as List<dynamic>;
      if (extractedData == null) {
        return;
      }
      _posts = extractedData.map((item) => Post.fromJson(item)).toList();
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black87,
      ),
      body: FutureBuilder(
        future: Provider.of<PostProvider>(context, listen: false).fetchAndSetPosts(),
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (dataSnapshot.error != null) {
              return Center(child: Text('An error occurred!'));
            } else {
              return Consumer<PostProvider>(
                builder: (ctx, postProvider, _) => ListView.builder(
                  itemCount: postProvider.posts.length,
                  itemBuilder: (_, i) => Card(
                    color: Colors.black,
                    elevation: 5, // this gives the shadow
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            postProvider.posts[i].title,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                          ),
                          subtitle: Center(
                            child: Text(
                              postProvider.posts[i].body,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.favorite, color: Colors.red),
                              onPressed: () {
                                // handle the like button press
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.thumb_up, color: Colors.blue),
                              onPressed: () {
                                // handle the thumbs up button press
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.thumb_down, color: Colors.blue),
                              onPressed: () {
                                // handle the thumbs down button press
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.more_horiz, color: Colors.grey),
                              onPressed: () {
                                // handle the more button press
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}



