import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/contacts_card.dart';


@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({
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
          title: Text('History'),
          surfaceTintColor: activeCardColor,
        ),
        const SliverToBoxAdapter(child: 
        SizedBox(height: 16),),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio:  1.6,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const ListContactCard(contacts: ['Olena','Ivan', 'Volodymur']);
                },
                childCount: 30,
              ),
            ),
          )
      ],
    ),
    );
  }
}