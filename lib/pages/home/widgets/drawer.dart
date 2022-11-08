import 'package:agency/constants.dart';
import 'package:agency/pages/home/widgets/languages.dart';
import 'package:agency/theme.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        _buildListTile('Giriş', Icons.login, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.login)),
        _buildListTile('Hesabım', Icons.person, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.account)),
        _buildListTile('Dashboard', Icons.home, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.home)),
        _buildListTile('Satışlarım', Icons.sell, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.sales)),
        _buildListTile('Harcamalarım', Icons.star, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.points)),
        _buildListTile('Dökümanlar', Icons.receipt, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.documents)),
        _buildListTile(
            'Bize Yazın', Icons.contact_mail, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.contact)),
        _buildListTile(
            'Dili Değiştir', Icons.language, '', Colors.grey.shade600,
            onTab: () => showLanguageSettings()),
        _buildListTile('Çıkış', Icons.logout_outlined, '', Colors.grey.shade600,
            onTab: () => Get.toNamed(AppRoutes.logout)),
      ],
    ),
  );
}

Widget _buildListTile(String title, IconData icon, String trailing, Color color,
    {onTab}) {
  return ListTile(
      contentPadding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      leading: Container(
        width: 46,
        height: 46,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: color.withAlpha(30)),
        child: Center(
          child: Icon(
            icon,
            color: color,
          ),
        ),
      ),
      title: Text(title),
      trailing: Container(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(trailing,
                style: lightTheme.textTheme.bodyText1
                    ?.copyWith(color: Colors.grey.shade600)),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
      ),
      onTap: onTab);
}
