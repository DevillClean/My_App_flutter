import 'package:json_annotation/json_annotation.dart';

part 'contacts.g.dart';

@JsonSerializable()
class Contacts {
  const Contacts({this.id, required this.name});

  factory Contacts.fromJson(Map<String, dynamic> json) => _$ContactsFromJson(json);

  final String? id;
  final String? name;

  Map<String, dynamic> toJson() => _$ContactsToJson(this);
}