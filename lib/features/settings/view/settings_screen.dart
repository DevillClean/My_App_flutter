import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/settings/widgets/settings_changed_card.dart';
import 'package:flutter_application_1/ui/constans.dart';
import 'package:flutter_application_1/ui/widgets/base_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          elevation: 0,
          title: Text('Settings'),
          surfaceTintColor: activeCardColor,
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(height: 16),
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsChangedCard(
            title: '  Dark theme',
            value: true,
            onChanged: (value){},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsChangedCard(
            title: '  Notifications',
            value: false,
            onChanged: (value){},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsChangedCard(
            title: '  Allow analytics',
            value: false,
            onChanged: (value){},
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16),),
         SliverToBoxAdapter(
            child: SettingsActionCard(
              title: '  Clear the history', 
              onTap: () {  }, 
              iconData: FontAwesomeIcons.deleteLeft,
              iconColor: bottomContainerColor, 
          ),
        ),
         SliverToBoxAdapter(
            child: SettingsActionCard(
              title: '  Write to support', 
              onTap: () {  }, 
              iconData: FontAwesomeIcons.message,  
              iconColor: null,
          ),
        ),
      ],
    ),
    );
  }
}

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key, 
    required this.title, 
    required this.onTap, 
    required this.iconData, 
    required this.iconColor,
  });

  final String title;
  final VoidCallback? onTap;
  final IconData iconData;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: BaseContainer(
          padding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          width: double.infinity,
          margin: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(color: textFont).copyWith(fontSize: 18),
              ),
               Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  iconData, 
                  color:  iconColor ??  textFont, 
                  size: 28,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


