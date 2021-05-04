import 'package:cached_network_image/cached_network_image.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// About page content for the desktop
class AboutPageContentDesktop extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor
          ],
        ),
      ),
      child: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) =>
            Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? NavigationDrawer()
              : null,
          backgroundColor: Colors.transparent,
          body: Scrollbar(
            isAlwaysShown: true,
            thickness: 13,
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              children: <Widget>[
                Container(
                  color: Colors.black26,
                  height: 250,
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('About',
                          style: TextStyle(
                            fontSize: 50,
                            color: Theme.of(context).textTheme.bodyText1.color,
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black54,
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://i.ibb.co/xjHByJX/Founder-Guy-Luz-circle.png',
                                  fit: BoxFit.cover,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Guy Luz Founder of CyBear Jinni',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 104,
                          ),
                          const Text(
                            '"Our goal is to raise the'
                            ' quality of life for '
                            'everyone.\n   We are doing '
                            'this by making Smart Home '
                            'more\n   affordable and '
                            'accessible for the common'
                            ' person."',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black26,
                  height: 500.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      SizedBox(
                        width: 600,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Fan Art',
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .color),
                                textAlign: TextAlign.center),
                            const SizedBox(
                              height: 60,
                            ),
                            const Text(
                              'We are happy to share with you our community love '
                              'and support with their creative fan art.',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(
                        alignment: Alignment.center,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://i.ibb.co/XXVyGsJ/Cy-Bear-Jinni-art-1.jpg',
                          height: 400,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
                BottomNavigationMenu(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}