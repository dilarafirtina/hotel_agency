import 'package:agency/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/configuration.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: AspectRatio(
            aspectRatio: 1 / 0.5,
            child: cachedNetworkImage(
              bonusLogo,
              BoxFit.contain,
              'login_header',
            ),
          ),
        ),
      ],
    );
  }
}
