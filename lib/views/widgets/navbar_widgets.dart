import 'package:flutter/material.dart';
import '../../data/notifiers.dart';

class NavbarWidgets extends StatelessWidget {
  const NavbarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
              icon: Icon(Icons.account_circle_sharp),
              label: "Profile",
            ),
          ],

          onDestinationSelected: (int value) {
            // print(value);
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
    throw UnimplementedError();
  }
}
