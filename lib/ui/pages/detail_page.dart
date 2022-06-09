import 'package:longevity_resort/shared/theme.dart';
import 'package:longevity_resort/ui/widgets/btn_primary.dart';
import 'package:longevity_resort/ui/widgets/interest_item.dart';
import 'package:longevity_resort/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

import 'bonus_page.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1590001155093-a3c66ab0c3ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/icon_emblem.png',
              width: 108,
              height: 24,
            ),
            const SizedBox(height: 256),

            // TODO : TITLE

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Villa One',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Meldives',
                        style: grayTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_start.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '4.8',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),

            // TODO : DESCRIPTION

            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TODO : DETAIL

                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Maldives could soon become home to an exclusive resort, where well-heeled individuals and their families can access the latest in longevity treatments.',
                    style: blackTextStyle.copyWith(
                      height: 2,
                    ),
                  ),

                  // TODO : PHOTOS

                  const SizedBox(height: 20),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      PhotoItem(imgUrl: 'https://images.unsplash.com/photo-1591074688601-9fca7714536a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                      PhotoItem(imgUrl: 'https://images.unsplash.com/photo-1620483829312-71b2ec172fd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
                      PhotoItem(imgUrl: 'https://images.unsplash.com/photo-1586861642026-74a6da22a3cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80'),
                    ],
                  ),

                  // TODO : INTEREST

                  const SizedBox(height: 20),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      InterestItem(
                        text: 'Spa',
                      ),
                      InterestItem(
                        text: 'Fitness',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                       InterestItem(
                        text: 'Work',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // TODO : PRICE AND ACTION

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$25 000',
                          style: blackTextStyle.copyWith(
                              fontSize: 17, fontWeight: medium),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'for 30 days',
                          style: grayTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  BtnPrimary(
                    text: 'Book Now',
                    onPressed: () {
                     //BonusPage()
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BonusPage(),
                        ),
                      );
                    },
                    width: 170,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            Container(
              width: double.infinity,
              height: 214,
              margin: const EdgeInsets.only(top: 236),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
              )),
            ),
            content()
          ],
        ),
      ),
    );
  }
}
