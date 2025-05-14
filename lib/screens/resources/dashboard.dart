import 'package:educational_app/screens/home_screen.dart';
import 'package:educational_app/screens/profile_screen.dart';
import 'package:educational_app/screens/question_practice.dart';

import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home, 'title': 'Home'},
    {'icon': Icons.school_outlined, 'title': 'Question practice'},
    {'icon': Icons.person, 'title': 'Profile'},
  ];
  @override
  Widget build(BuildContext context) {
    final selectedTitle = _navItems[_selectedIndex]['title'];
    final isBlackBackground =
        selectedTitle == 'Question practice' || selectedTitle == 'Profile';

    return Scaffold(
      backgroundColor: isBlackBackground ? Colors.black : Colors.green,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IndexedStack(
            index: _selectedIndex,
            children: [HomeScreen(), QuestionPractice(), ProfileScreen()],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: isBlackBackground ? Colors.black : Colors.green,
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_navItems.length, (index) {
            return BottomNavWidget(
              isSelected: _selectedIndex == index,
              title: _navItems[index]['title'],
              icon: _navItems[index]['icon'],
              selectedIndex: _selectedIndex,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}

class BottomNavWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final IconData icon;
  final Function()? onTap;
  final int selectedIndex;

  const BottomNavWidget({
    super.key,
    this.isSelected = false,
    this.title = '',
    this.onTap,
    required this.icon,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        selectedIndex == 0 ? Colors.black : Colors.grey.withValues(alpha: 0.2);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white),
            if (isSelected) ...[
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
