import 'package:longevity_resort/cubit/page_cubit.dart';
import 'package:longevity_resort/ui/pages/home_page.dart';
import 'package:longevity_resort/ui/pages/setting_page.dart';
import 'package:longevity_resort/ui/widgets/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  Widget Navbar() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              NavItem(
                imageUrl: 'assets/icon_home.png',
                index: 0,
              ),
              NavItem(
                imageUrl: 'assets/icon_settings.png',
                index: 1,
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              Navbar(),
            ],
          ),
        );
      },
    );
  }
}
