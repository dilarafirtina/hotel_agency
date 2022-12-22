import 'package:agency/widgets/custom_header.dart';
import 'package:agency/widgets/networkimage_widget.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/configuration.dart';
import '../../widgets/master_page.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return masterPage(
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          customHeader("Bize Yazın"),
          Container(
            margin: const EdgeInsets.only(bottom: defaultPadding * 3),
            alignment: Alignment.topCenter,
            width: 350,
            child: cachedNetworkImage(logoImage, BoxFit.cover, 'contact'),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text('+90 850 00 00'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('hotel@email.com'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.my_location),
              title: Text('Hotel Name'),
              subtitle: Text('Lorem ipsum doler amet lorem ipsum doler amet '),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: defaultPadding * 3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  iconSize: 20,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () => {},
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  iconSize: 20,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () => {},
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  iconSize: 20,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () => {},
                  icon: FaIcon(FontAwesomeIcons.youtube),
                  iconSize: 20,
                  color: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
