import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:agency/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/Themes.dart';
import '../../../utils/configuration.dart';

Widget defaultDrawer({
  final String? text,
  final Function? press,
}) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: cachedNetworkImage(
            logoImage,
            BoxFit.contain,
            'drawer',
          ),
        ),
        _buildListTile('Giriş', Icons.login,
            onTab: () => Get.toNamed(AppRoutes.login)),
        _buildListTile('Hesabım', Icons.person,
            onTab: () => Get.toNamed(AppRoutes.account)),
        _buildListTile('Dashboard', Icons.home,
            onTab: () => Get.toNamed(AppRoutes.home)),
        _buildListTile('Satışlarım', Icons.sell,
            onTab: () => Get.toNamed(AppRoutes.sales)),
        _buildListTile('Harcamalarım', Icons.star,
            onTab: () => Get.toNamed(AppRoutes.points)),
        _buildListTile('Dökümanlar', Icons.receipt,
            onTab: () => Get.toNamed(AppRoutes.documents)),
        _buildListTile('Bize Yazın', Icons.contact_mail,
            onTab: () => Get.toNamed(AppRoutes.contact)),
        popupMenu(),
        _buildListTile('Çıkış', Icons.logout_outlined,
            onTab: () => Get.toNamed(AppRoutes.logout)),
      ],
    ),
  );
}

Widget _buildListTile(String title, IconData icon, {onTab}) {
  return ListTile(
      contentPadding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      leading: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.grey.shade600.withAlpha(30)),
        child: Center(
          child: Icon(
            icon,
            color: Colors.grey.shade600,
          ),
        ),
      ),
      title: Text(title),
      trailing: Container(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('',
                style: lightTheme.textTheme.bodyText1
                    ?.copyWith(color: Colors.grey.shade600)),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
      ),
      onTap: onTab);
}

Widget popupMenu() {
  return PopupMenuButton<int>(
    tooltip: "",
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        onTap: () => {},
        child: ListTile(
          leading: Container(
              width: 36,
              child: cachedNetworkImage(trImage, BoxFit.contain, 'tr')),
          title: const Text("Türkçe"),
          onTap: () {
            showToastMessage(
                "success", "Success", "Dil, Türkçe olarak değiştirildi.");
            //Get.back();
          },
          trailing: Icon(Icons.arrow_right),
        ),
      ),
      PopupMenuItem(
        value: 2,
        onTap: () => {},
        child: ListTile(
          leading: SizedBox(
              width: 36,
              child: cachedNetworkImage(enImage, BoxFit.contain, 'en')),
          title: const Text("English"),
          onTap: () {
            showToastMessage("error", "Success", "Error snackbar widget");
            //Get.back();
          },
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
      PopupMenuItem(
        value: 3,
        onTap: () => {},
        child: ListTile(
          leading: Container(
              width: 36,
              child: cachedNetworkImage(ruImage, BoxFit.contain, 'ru')),
          title: const Text("Русский"),
          onTap: () {
            Get.back();
          },
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
      PopupMenuItem(
        value: 4,
        onTap: () => {},
        child: ListTile(
          leading: SizedBox(
              width: 36,
              child: cachedNetworkImage(deImage, BoxFit.contain, 'de')),
          title: const Text("Deutsch"),
          onTap: () {
            Get.back();
          },
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
    ],
    offset: Offset(200, 200),
    color: Colors.white,
    elevation: 20.0,
    child: _buildListTile(
      'Dili Değiştir',
      Icons.language,
    ),
  );
}
