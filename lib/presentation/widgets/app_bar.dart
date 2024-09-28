import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:flutter/material.dart';

int _cartItemsNo = 3;

PreferredSizeWidget get customAppbar {
  return AppBar(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'eFishery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: CustomColor.primaryColor,
          ),
        ),
        Text(
          'smart fedder',
          style: TextStyle(
            fontSize: 16,
            color: CustomColor.primaryColor,
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.settings,
          color: CustomColor.primaryColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Badge(
          backgroundColor: Colors.amber,
          label: Text(
            _cartItemsNo.toString(),
          ),
          child: Icon(
            Icons.cloud,
            size: 25,
            color: CustomColor.primaryColor,
          ),
        ),
      ),
    ],
  );
}
