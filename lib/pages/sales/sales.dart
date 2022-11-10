import 'package:agency/constants.dart';
import 'package:agency/pages/sales/widgets/sales_card.dart';
import 'package:flutter/material.dart';

Widget salesList(List data) {
  return Scaffold(
    body: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) =>
                SalesCard(sales: data[index], press: () => {}),
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: kPrimaryColor,
      child: const Icon(
        Icons.person_add_alt_1,
        color: Colors.white,
      ),
    ),
  );
}
