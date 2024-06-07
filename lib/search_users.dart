import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/favorites/view/favorites_screen.dart';
import 'package:flutter_application_1/features/history/view/history_screen.dart';
import 'package:flutter_application_1/features/search/view/search_screen.dart';
import 'package:flutter_application_1/features/settings/view/settings_screen.dart';
import 'package:flutter_application_1/ui/constans.dart';

@RoutePage()
class SearchUsers extends StatefulWidget {
  const SearchUsers({super.key});

  @override
  State<SearchUsers> createState() => _SearchUsersState();
}

class _SearchUsersState extends State<SearchUsers> {
  var _selectedPageIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgk,
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() => _selectedPageIndex = value);
        },
        children: const [
          SearchScreen(),
          FavoritesScreen(),
          HistoryScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(244, 223, 2, 2),
          unselectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          currentIndex: _selectedPageIndex,
          onTap: _openPage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }

  void _openPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    });
  }
}
