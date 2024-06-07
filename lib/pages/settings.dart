import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page_counter.dart';
import 'package:flutter_application_1/pages/page_save_counter.dart';
import 'package:flutter_application_1/pages/page_tests.dart';
import 'package:flutter_application_1/pages/page_theme.dart';
import 'package:flutter_application_1/search_users.dart';
import 'package:flutter_application_1/ui/constans.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgk,
        title: const Text(
          'List of other technologies',
          style: bodyTextStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SettingsTheme();
                    }));
                  },
                  icon: const Icon(Icons.color_lens),
                  label: const Text('BLoC theme'),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PageCounter();
                    }));
                  },
                  icon: const Icon(Icons.plus_one),
                  label: const Text('BLoC counter'),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchUsers();
                    }));
                  },
                  icon: const Icon(Icons.search),
                  label: const Text('Demo search users'),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyApp();
                    }));
                  },
                  icon: const Icon(
                      CupertinoIcons.chevron_left_slash_chevron_right),
                  label: const Text('Demo search user github'),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SaveWidget();
                    }));
                  },
                  icon:
                      const Icon(CupertinoIcons.arrow_counterclockwise_circle),
                  label: const Text('Shared preferences'),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
