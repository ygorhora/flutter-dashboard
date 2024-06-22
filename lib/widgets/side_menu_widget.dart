import 'package:flutter/material.dart';
import 'package:flutter_dashboard/data/side_menu_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Container(
        child: ListView.builder(
      itemCount: data.menu.length,
      itemBuilder: (context, index) {
        return buildMenuEntry(data, index);
      },
    ));
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;

    return ListTile(
      leading: Icon(data.menu[index].icon),
      title: Text(data.menu[index].title),
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      selected: isSelected,
    );
  }
}
