import 'package:agency/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t Have Account?'),
        TextButton(
          onPressed: () => Get.toNamed(AppRoutes.profile),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
