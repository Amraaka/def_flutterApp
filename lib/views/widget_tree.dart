import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dar.dart';
import 'package:flutter_app/views/pages/settings_page.dart';
import 'widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drivense"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Pressed on isDarkMode");
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) =>
                  Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            ),
          ),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage(title: 'Settings',)));
            print('Pressed on settings');
          }, icon: Icon(Icons.settings)),
        ],
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidgets(),
    );
    throw UnimplementedError();
  }
}
