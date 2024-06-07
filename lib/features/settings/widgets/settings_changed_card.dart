
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/base_container.dart';

class SettingsChangedCard extends StatelessWidget {
  const SettingsChangedCard({
    super.key,
    required this.title,
    required this.value, 
    this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool>? onChanged;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BaseContainer(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        width: double.infinity,
        margin: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
             title,
             style: const TextStyle(color: textFont).copyWith(fontSize: 18),
            ),
            CupertinoSwitch(
              value: value, 
              onChanged: onChanged,
            ),
          ],
        ), 
      ),
    );
  }
}