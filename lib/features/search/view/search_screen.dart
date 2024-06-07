import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/search/widgets/search_button.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/contacts_card.dart';
import 'package:flutter_application_1/ui/widgets/list_contacts.dart';
import 'package:flutter_application_1/features/search/widgets/search_bottom_sheet.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          elevation: 0,
          title: const Text('Search Users'),
          surfaceTintColor: activeCardColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: SearchButton(
              onTap: () {
                _showSearchChiet(context);
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 100,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 3),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final contacts = List.generate(4, (index) => 'Contact $index');
              return ListContactCard(contacts: contacts);
            },
          ),
        )),
        SliverList.builder(
            itemBuilder: (context, index) => const ListUsers(
                  contact: 'Users',
                )),
      ],
    );
  }

  void _showSearchChiet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => const Padding(
              padding: EdgeInsets.only(top: 70),
              child: SearchContactsBottomSheet(),
            ));
  }
}
