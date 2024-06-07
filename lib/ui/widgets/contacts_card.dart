import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/base_container.dart';

class ListContactCard extends StatelessWidget {
  const ListContactCard({
    super.key,
    required this.contacts,
  });

  final List<String> contacts;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: 200,
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('last contacts',
              style: TextStyle(color: textFont, fontWeight: FontWeight.w500)),
          Flexible(
            child: Text(
              contacts.asMap().entries.map((e) {
                final sb = StringBuffer();
                sb.write(e.value);
                if (e.key != contacts.length - 1) {
                  sb.write(',');
                }
                return sb.toString();
              }).join(),
              overflow: TextOverflow.ellipsis,
              maxLines: 6,
            ),
          ),
        ],
      ),
    );
  }
}
