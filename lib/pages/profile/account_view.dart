import 'package:agency/widgets/master_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_menu_options.dart';

class AccountMenuView extends StatelessWidget {
  const AccountMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return masterPage(
      Container(
        color: Colors.grey.shade50,
        child: Column(
          children: const [
            ProfileHeader(),
            Expanded(
                child: SingleChildScrollView(
              child: ProfileMenuOptions(),
            )),
          ],
        ),
      ),
    );
  }
}
