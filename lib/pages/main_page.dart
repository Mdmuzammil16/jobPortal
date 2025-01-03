import 'package:butter_fly/pages/book_marks_page.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});


  @override
  State<MainPage> createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  bool visible = true;
  int _selectedIndex = 0;
  var _selectedPageIndex = 0;
  late List<Widget> _pages;
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;
    _pages = [
      const HomePage(),
      const CategoryPage(),
      const BookMarksPage(),
      const ProfilePage(),
    ];
    _pageController = PageController(initialPage: _selectedPageIndex);

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // Trigger fade-in animation
    _animationController.forward();

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(_selectedIndex);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.primary,
      body:  SafeArea(
        top: true,
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: CustomColors.secondary,
      unselectedIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      unselectedItemColor: Colors.black.withOpacity(0.5),
      selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 10,
          color: CustomColors.primary),
      unselectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w500),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/home.png',
            width: 20,
            height: 20,
            color: _selectedIndex == 0
                ? CustomColors.secondary
                : Colors.black.withOpacity(0.5),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/categories.png',
            width: 20,
            height: 20,
            color: _selectedIndex == 1
                ? CustomColors.secondary
                : Colors.black.withOpacity(0.5),
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/bookmark.png',
            width: 20,
            height: 20,
            color: _selectedIndex == 2
                ? CustomColors.secondary
                : Colors.black.withOpacity(0.5),
          ),
          label: 'BokMark',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/profile.png',
            width: 20,
            height: 20,
            color: _selectedIndex == 3
                ? CustomColors.secondary
                : Colors.black.withOpacity(0.5),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    ),
    );
  }
}
