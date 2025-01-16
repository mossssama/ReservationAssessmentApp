import 'package:flutter/material.dart';
import 'package:madmon_assessment_app/core/colors.dart';
import 'core/assets.dart';
import 'core/shared_widgets/svg_image_widget.dart';
import 'features/home/presentation/screens/home_screen.dart';
import 'features/leads/presentation/screens/leads_screen.dart';

import 'features/account/presentation/screens/account_screen.dart';
import 'features/reservation/presentation/screens/reservation_screen.dart';
import 'features/units/presentation/screens/units_screen.dart';

// Mohamed Osama Saleh
void main() {
  runApp(const MadmonAssessmentDemoApp());
}

class MadmonAssessmentDemoApp extends StatelessWidget {
  const MadmonAssessmentDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reservation App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _currentIndex = 3;

  final List<Widget> _screens = [
    const HomeScreen(),
    const LeadsScreen(),
    const UnitsScreen(),
    const ReservationsScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Reservations', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[600])),
        leading: IconButton(
          icon: const SvgImageWidget(
            svgPath: Assets.linesIcon,
            size: 16,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const SvgImageWidget(
              svgPath: Assets.notificationIcon,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: AppColors.primaryBlue),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryBlue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            activeIcon: SvgImageWidget(svgPath: Assets.homeIcon, color: AppColors.primaryBlue),
            icon: SvgImageWidget(svgPath: Assets.homeIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgImageWidget(svgPath: Assets.peopleIcon, color: AppColors.primaryBlue),
            icon: SvgImageWidget(svgPath: Assets.peopleIcon),
            label: 'Leads',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgImageWidget(svgPath: Assets.villageIcon, color: AppColors.primaryBlue),
            icon: SvgImageWidget(svgPath: Assets.villageIcon),
            label: 'Units',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgImageWidget(svgPath: Assets.papersIcon, color: AppColors.primaryBlue),
            icon: SvgImageWidget(
              svgPath: Assets.papersIcon,
              size: 20,
            ),
            label: 'Reservations',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgImageWidget(svgPath: Assets.personIcon, color: AppColors.primaryBlue),
            icon: SvgImageWidget(svgPath: Assets.personIcon),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
