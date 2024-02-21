import 'package:flutter/material.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({
    super.key,
  });

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.indigo,
      showSelectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
          activeIcon: IconWithCircle(icon: Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: 'Wallet',
          activeIcon: IconWithCircle(icon: Icons.account_balance_wallet),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.radio_button_checked,
            size: 40,
            color: Colors.indigo,
          ),
          label: 'Wallet',
          activeIcon: Icon(
            Icons.radio_button_checked,
            size: 40,
            color: Colors.indigo,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label: 'Profile',
          activeIcon: IconWithCircle(icon: Icons.people_alt),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_outlined),
          label: 'Options',
          activeIcon: IconWithCircle(icon: Icons.more_horiz),
        ),
      ],
    );
  }
}

class IconWithCircle extends StatelessWidget {
  final IconData icon;
  final double? widthHeight = 6;
  const IconWithCircle({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Container(
          width: widthHeight,
          height: widthHeight,
          decoration: const BoxDecoration(
            color: Colors.indigo,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
