import 'package:agency/widgets/networkimage_widget.dart';
import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 250,
              child:
                  cachedNetworkImage(contactImage, BoxFit.contain, 'contact'),
            ),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('+90 850 00 00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('hotel@email.com'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.my_location),
                    title: Text('Hotel Name'),
                    subtitle:
                        Text('Lorem ipsum doler amet lorem ipsum doler amet '),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () => {},
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        iconSize: 30,
                        color: kPrimaryColor,
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        iconSize: 30,
                        color: kPrimaryColor,
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: FaIcon(FontAwesomeIcons.youtube),
                        iconSize: 30,
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
