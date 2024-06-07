part of 'user_bloc.dart';

@immutable
class UserState {
  final List<User> users;
  final List<Job> job;
  final bool isLoding;

  UserState({
  this.users = const [],
  this.job = const [], 
  this. isLoding = false
  });

  UserState copyWith({
   List<User>? users,
   List<Job>? job,
   bool isLoding = false,
  }){

   return UserState(
    users: users?? this.users, 
    job: job?? this.job, 
    isLoding: isLoding,
   );
  }
}


class User {
  final String name;
  final String id;

  User({required this.name, required this.id});
}

class Job {
  final String name;
  final String id;

  Job({required this.name, required this.id});
}
