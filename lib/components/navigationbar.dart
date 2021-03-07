import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2,
        vertical: kDefaultPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationItem(
            title: 'Today',
            image: 'assets/icons/calendar.svg',
            press: () {},
          ),
          NavigationItem(
            title: 'All Exercises',
            image: 'assets/icons/gym.svg',
            press: () {},
            isActive: true,
          ),
          NavigationItem(
            title: 'Settings',
            image: 'assets/icons/Settings.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    Key key,
    this.image,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  final String image;
  final String title;
  final Function press;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SvgPicture.asset(
            image,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
