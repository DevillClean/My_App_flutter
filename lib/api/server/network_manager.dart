
// class NetworkManager {
//   static const _url = "https://api.github.com/users/sprh";

//   const NetworkManager();

//   Future<GithubProfile> getData() async {
//     final uri = Uri.parse(_url);
//     final response = await get(uri);
//     if(response.statusCode == 200){
//       final body = response.body;
//       final json = jsonDecode(body) as Map<String, dynamic>;
//       final profile = GithubProfile.fromJson(json);
//       return profile;
//     }
//     throw ArgumentError("Unknown status code");
//   }
// }


