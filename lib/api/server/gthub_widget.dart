import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GithubWidget extends StatefulWidget {
  const GithubWidget({
    super.key,
  });

  @override
  State<GithubWidget> createState() => _GithubWidgetState();
}

class _GithubWidgetState extends State<GithubWidget> {
  String? imageUrl;
  String? name;
  String? bio;
  String? login;

  void _sendRequest() async {
    Dio dio = Dio();
    Response response = await dio.get('https://api.github.com/users/sprh');
    setState(() {
      name = response.data['name'];
      imageUrl = response.data['avatar_url'];
      bio = response.data['bio'];
      login = response.data['login'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          if (imageUrl != null) Image.network(imageUrl!, width: 150),
          Text(
            bio ?? '',
            textAlign: TextAlign.center,
          ),
          Text(
            login ?? '',
            textAlign: TextAlign.center,
          ),
          Text(
            name ?? '',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: _sendRequest,
            child: const Text('send request'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
