import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:vritant/Favourite/savedRhymes.dart';
import 'package:vritant/Home/screens.dart';
import 'package:vritant/login/providers/google_auth_provider.dart';
import 'package:vritant/tabs/provider/localProvider.dart';

import '../../theme/theme.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

ThemeManager themeManager = ThemeManager();

class _TabsScreenState extends State<TabsScreen> {
  final user = FirebaseAuth.instance.currentUser;
  late List<Widget> _pages;
  int _selectedPageIndex = 0;
  bool _isDarkMode = false;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [HomePage(), ObjectGesturesWidget()];
    super.initState();
  }

  void toggleTheme() {
    final themeManager = Provider.of<ThemeManager>(context, listen: true);
    themeManager.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    final googleAuth = Provider.of<GoogleSignInProvider>(context);
    final mediaquery = MediaQuery.of(context);

    return Consumer<ThemeManager>(
      builder: (context, themeManager, _) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi,',
                      style: const TextStyle(
                        fontFamily: 'Open-Sauce-Sans',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Welcome to Vritant",
                      style: const TextStyle(
                        fontFamily: 'Open-Sauce-Sans',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              InkWell(
                onTap: () => signOut(googleAuth),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1.0),
                  child: Image.asset(
                    'assets/images/appbar_icon.png',
                    fit: BoxFit.cover,
                    width: mediaquery.size.width * 0.15,
                    height: mediaquery.size.height * 0.2,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  themeManager.currentThemeMode == ThemeMode.dark
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
                onPressed: themeManager.toggleTheme,
              ),
            ],
          ),
          body: Container(
            child: _pages[_selectedPageIndex],
            color: Colors.white,
          ),
          bottomNavigationBar: Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 25.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 184, 184, 184).withOpacity(0.3),
                  spreadRadius: 15,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              child: BottomNavigationBar(
                onTap: _selectPage,
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.blueGrey,
                selectedItemColor: Colors.red,
                currentIndex: _selectedPageIndex,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Icon(
                        Icons.home_outlined,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Icon(
                        Icons.play_circle_outlined,
                      ),
                    ),
                    label: 'Playground',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void signOut(GoogleSignInProvider gAuth) {
    if (user!.providerData[0].providerId == "google.com") {
      // signed via google
      gAuth.handleSignOut();
    }
  }
}
