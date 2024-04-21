import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

// Post Model
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

// Post Repository
class PostRepository {
  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => new Post.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}

// Post Event
abstract class PostEvent {}

class FetchPosts extends PostEvent {}

// Post Bloc
class PostBloc extends Bloc<PostEvent, List<Post>> {
  final PostRepository postRepository;

  PostBloc(this.postRepository) : super([]) {
    on<FetchPosts>((event, emit) async {
      try {
        final posts = await postRepository.fetchPosts();
        emit(posts);
      } catch (_) {
        throw Exception('Failed to fetch posts');
      }
    });
  }
}


// Main App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(PostRepository())..add(FetchPosts()),
      child: PostList(),
    );
  }
}

// Post List
class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<PostBloc, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(posts[index].title),
                      subtitle: Text(posts[index].body),
                    ),
                    Divider(color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.red),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_up, color: Colors.blue),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down, color: Colors.blue),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.more_horiz, color: Colors.grey),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
