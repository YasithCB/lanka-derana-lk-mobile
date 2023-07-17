import 'package:flutter/material.dart';
import 'package:lanka_derana/pages/shop_page.dart';

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

    if (_selectedPageIndex == 1) {
      activePage = const ShopPage();
      activePageTitle = 'Shop';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          activePageTitle,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: activePage,
      // body: Column(
      //   children: [
      //     Row(
      //       children: [
      //         Expanded(
      //           child: TextButton.icon(
      //             onPressed: () {},
      //             icon: const Icon(Icons.location_on),
      //             label: const Text('Location'),
      //           ),
      //         ),
      //         const SizedBox(width: 6),
      //         Text(
      //           '|',
      //           style: Theme.of(context)
      //               .textTheme
      //               .titleLarge!
      //               .copyWith(color: Theme.of(context).colorScheme.onPrimary),
      //         ),
      //         const SizedBox(width: 6),
      //         Expanded(
      //           child: TextButton.icon(
      //             onPressed: () {},
      //             icon: const Icon(Icons.category_sharp),
      //             label: const Text('Catagory'),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shop_2),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Icon(Icons.add_circle_rounded,size: 32,),
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
