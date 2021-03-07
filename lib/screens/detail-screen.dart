import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/components/navigationbar.dart';
import 'package:meditation/components/search-box.dart';
import 'package:meditation/components/session-card.dart';
import 'package:meditation/constants.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueColor,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/images/meditation_bg.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3-10 MIN Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .6,
                    child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness'),
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: SearchBox(),
                  ),
                  Wrap(
                    spacing: kDefaultPadding,
                    runSpacing: kDefaultPadding,
                    children: [
                      SessionCard(),
                      SessionCard(),
                      SessionCard(),
                      SessionCard(),
                      SessionCard(),
                      SessionCard(),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Meditation_women_small.svg",
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Basic 2',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text('Start you deepen your pratice'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(kDefaultPadding / 2),
                          child: SvgPicture.asset("assets/icons/Lock.svg"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
