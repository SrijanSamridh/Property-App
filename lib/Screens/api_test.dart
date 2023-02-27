import 'package:flutter/material.dart';
import 'package:prop/API/api.dart';
import 'package:prop/Models/post.dart';
import 'package:prop/services/remote_services.dart';

// import '../API/api.dart';

String stringResponse = '';

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  List<Post>? posts;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    apiCall('');
    // fetch data from api
    getPosts();
  }

  getPosts() async {
    posts = await RemoteServices()
        .fetchPosts('https://jsonplaceholder.typicode.com/posts');

    if (posts != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Test'),
      ),
      body: Visibility(
          visible: isLoading,
          replacement: const Center(
            child: CircularProgressIndicator(
              color: Colors.grey,
            ),
          ),
          child: ListView.builder(
            itemCount: posts?.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading:
                    const Icon(Icons.account_box_sharp, color: Colors.black),
                title: Text('Title: ${posts![index].title}',
                    style: const TextStyle(fontSize: 20, color: Colors.black)),
                subtitle: Text('Subtitle: ${posts![index].id}',
                    style: const TextStyle(fontSize: 15, color: Colors.black)),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
              );
            },
          )),
    );
  }
}
