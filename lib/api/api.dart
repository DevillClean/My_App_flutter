import 'package:dio/dio.dart';
import 'package:flutter_application_1/api/models/contacts.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://api.api-ninjas.com/v1/babynames?gender=neutral')
abstract class ContactsClient {
  factory ContactsClient(Dio dio, {String baseUrl}) = _ContactsClient;

  @GET('/tasks')
  Future<List<Contacts>> getTasks();
}

