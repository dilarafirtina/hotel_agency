import 'package:agency/pages/sales/components/sales_data.dart';

import 'package:flutter/material.dart';
import '../../../constants.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({
    Key? key,
    required this.sales,
    required this.press,
  }) : super(key: key);

  final Sales sales;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding * 0.75),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: darkGrey,
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.key,
                    color: kPrimaryColor,
                    size: 20,
                  ),
                  Text(
                    sales.hotel,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sales.guestName + " " + sales.guestSurname,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        sales.operator,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(sales.nationality),
            ),
          ],
        ),
      ),
    );
  }
}
