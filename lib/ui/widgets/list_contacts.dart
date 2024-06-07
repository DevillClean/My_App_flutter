import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/base_container.dart';

class ListUsers extends StatelessWidget {
  const ListUsers(
      {super.key,
      this.isFavorite = false,
      required this.contact,
      this.sourceWord});

  final String contact;
  final String? sourceWord;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            if (sourceWord != null) ...[
              Text(sourceWord!, style: const TextStyle(color: textFont)),
              const Icon(
                Icons.call,
                color: Color.fromARGB(255, 117, 117, 117),
              ),
            ],
            Text(
              contact,
              style: const TextStyle(
                  color: textFont, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ]),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.star,
                  color: isFavorite ? bottomContainerColor : textFont))
        ],
      ),
    );
  }
}
