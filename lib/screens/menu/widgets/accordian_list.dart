import 'package:flutter/material.dart';

import 'accordian.dart';

class AccordianList extends StatelessWidget {
  const AccordianList({super.key});

  static final List<Map<String, dynamic>> menu = [
    {
      'label': 'Help & Support',
      'icon': 'assets/icons/help.png',
      'children': [
        {'label': 'Help Center'},
        {'label': 'Support Inbox'},
        {'label': 'Report a problem'},
        {'label': 'Terms & Policies'},
      ]
    },
    {
      'label': 'Settings & Privacy',
      'icon': 'assets/icons/help.png',
      'children': [
        {'label': 'Threads'},
        {'label': 'WhatsApp'}
      ]
    },
    {
      'label': 'Also from meta',
      'icon': 'assets/icons/help.png',
      'children': [
        {'label': 'Threads'},
        {'label': 'WhatsApp'}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        menu.length,
        (index) => Accordian(
          title: menu[index]['label'],
          icon: menu[index]['icon'],
          options: menu[index]['children'],
        ),
      ),
    );
  }
}
