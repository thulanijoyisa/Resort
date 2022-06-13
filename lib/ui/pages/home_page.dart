import 'package:longevity_resort/shared/theme.dart';
import 'package:longevity_resort/ui/widgets/destination_card.dart';
import 'package:longevity_resort/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin:
          EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey,\nJane Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Longevity Island ',
                  style: grayTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              title: 'Villa',
              location: 'Maldives',
              star: '4.8',
              imageUrl: 'https://images.unsplash.com/photo-1620719547176-a28c62fe8cd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
            ),
            DestinationCard(
              title: 'Villa One',
              location: 'Maldives',
              star: '4.8',
              imageUrl: 'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465',
            ),
            DestinationCard(
              title: 'Villa Two',
              location: 'Gaafu Alif',
              star: '4.8',
              imageUrl: 'https://images.unsplash.com/photo-1512100254544-47340ba56b5d?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464',
            ),
            DestinationCard(
              title: 'Villa Three',
              location: 'Funadhooviligilla',
              star: '4.8',
              imageUrl: 'https://images.unsplash.com/photo-1586500038052-b831efc02314?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            ),
            DestinationCard(
              title: 'Villa Four',
              location: 'Maldives',
              star: '4.8',
              imageUrl: 'https://images.unsplash.com/photo-1586500036706-41963de24d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            ),
          ],
        ),
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
          top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Longevity Scientific Resort',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const DestinationTile(
            imageUrl: 'https://images.unsplash.com/photo-1586500035847-8bb4c585cfb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            title: 'Longevity Resort',
            location: 'Maldives ',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'https://images.unsplash.com/photo-1601999705946-fbf42c3c6c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
            title: 'Longevity Resort',
            location: 'Maldives ',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'https://images.unsplash.com/photo-1611987948529-c906964b8711?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
            title: 'Longevity Resort',
            location: 'Funadhooviligilla ',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'https://images.unsplash.com/photo-1624612285983-858906f9c786?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
            title: 'Longevity Resort',
            location: 'Maldives ',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'https://images.unsplash.com/photo-1647729008415-a6f35619c736?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
            title: 'Longevity Resort',
            location: 'Gaafu Alif ',
            rating: '4.8',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
