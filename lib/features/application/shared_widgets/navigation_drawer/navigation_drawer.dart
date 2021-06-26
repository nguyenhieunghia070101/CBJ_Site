import 'package:cybear_jinni_site/core/route_names.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/navigation_drawer/drawer_item_on_click_route_page.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Navigation drawer for small screen sizes, replace the top navigation menu
class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          NavigationDrawerHeader(),
          const DrawerItemOnClickRoutePage(
              'Home', FontAwesomeIcons.home, homeRoute),
          const SizedBox(
            height: 13,
          ),
          const DrawerItemOnClickRoutePage(
              'Devices', FontAwesomeIcons.lightbulb, devicesRoute),
          const SizedBox(
            height: 13,
          ),
          const DrawerItemOnClickRoutePage(
              'Electricians', FontAwesomeIcons.hardHat, electriciansRoute),
          const SizedBox(
            height: 13,
          ),
          const DrawerItemOnClickRoutePage(
              'FAQ', FontAwesomeIcons.questionCircle, faqRoute),
          const SizedBox(
            height: 13,
          ),
          const DrawerItemOnClickRoutePage(
              'About', FontAwesomeIcons.addressCard, aboutRoute),
          const SizedBox(
            height: 13,
          ),
        ],
      ),
    );
  }
}
