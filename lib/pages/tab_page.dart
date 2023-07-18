import 'package:flutter/material.dart';
import 'package:lanka_derana/pages/membership_page.dart';
import 'package:lanka_derana/pages/post_ad_page.dart';
import 'package:lanka_derana/pages/profile_page.dart';
import 'package:lanka_derana/pages/search_page.dart';

import 'home_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomePage();
    var activePageTitle = 'LankaDerana.lk';

    switch (_selectedPageIndex) {
      case 1:
        activePage = const ShopPage();
        activePageTitle = 'Search';
        break;
      case 2:
        activePage = const PostAdPage();
        activePageTitle = 'Post Your Ads';
        break;
      case 3:
        activePage = const MembershipPage();
        activePageTitle = 'Membership Details';
        break;
      case 4:
        activePage = const ProfilePage();
        activePageTitle = 'My Profile';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          activePageTitle,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: activePage,
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Icon(
                Icons.add_circle_rounded,
                size: 32,
              ),
            ),
            label: 'Post Ad',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Membership',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Profile',
          ),
        ],
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
    );
  }
}
