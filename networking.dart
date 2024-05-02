/* main.dart

 import 'package:flutter/material.dart';
 import 'package:flutter_application_1/githubProfileWidget.dart';

 void main(){
   runApp(const MyApp());
 }

 
  class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
     return MaterialApp(
       title: 'Flutter demo',
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
         useMaterial3: true,
       ),
       home: const Scaffold(
         body: Center(
           child: GitHubProfileWidget(),
         ),
       ),
     ); 
   }
 }

*/

/* metworkManager.dart

import 'dart:async';
import 'dart:convert';
import 'package:flutter_application_1/profile.dart';
import 'package:http/http.dart';

class NetworkManager {
  static const _url = "https://api.github.com/users/sprh";

  const NetworkManager();

  Future<GithubProfile> getData() async {
    final uri = Uri.parse(_url);
    final response = await get(uri);
    if(response.statusCode == 200){
      final body = response.body;
      final json = jsonDecode(body) as Map<String, dynamic>;
      final profile = GithubProfile.fromJson(json);
      return profile;
    }
    throw ArgumentError("Unknown status code");
  }
}

*/

/* githubProfileWidget.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/neworkManager.dart';
import 'package:flutter_application_1/profile.dart';

class GitHubProfileWidget extends StatefulWidget {
  const GitHubProfileWidget({super.key});

  @override
  State<StatefulWidget> createState() => _GitHubProfileWidgetState();
}

class _GitHubProfileWidgetState extends State<GitHubProfileWidget> {
  final networkManager = const NetworkManager();
  GithubProfile? data;

  @override
  void initState(){
    super.initState();
    networkManager.getData().then(
        (value) => setState(() => data = value as GithubProfile?),
    );
  }

  @override
  Widget build(BuildContext context){
    final data = this.data;

    if(data == null) {
      return const CircularProgressIndicator();
    }
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(39, 255, 193, 7),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            data.avatarUrl,
            height: 50,
            width: 50,
          ),
          Text(
            data.login,
            style: const TextStyle(fontSize: 25),
          ),
          Text(data.name),
          Text(data.bio),
        ],
      ),
    );
  }
}

*/

/* profile.dart

class GithubProfile {
  final String login;
  final String name;
  final String bio;
  final String avatarUrl;

  const GithubProfile({
    required this.login,
    required this.name,
    required this.bio,
    required this.avatarUrl,
  });

  factory GithubProfile.fromJson(Map<String, dynamic> json) => GithubProfile(
    login: json["login"],
    name: json["name"],
    bio: json["bio"],
    avatarUrl: json["avatar_url"],
    );
}

*/