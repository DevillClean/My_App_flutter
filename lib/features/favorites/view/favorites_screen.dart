import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/list_contacts.dart';


@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          elevation: 0,
          title: Text('Favorite Contacts'),
          surfaceTintColor: activeCardColor,
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16),),
        SliverList.builder(
            itemBuilder: (context, index) => const ListUsers(
              isFavorite: true, 
              contact: 'Users',
              sourceWord: 'Contact',
            )),
      ],
    ),
    );
  }
}