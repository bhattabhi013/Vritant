import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vritant/firebase_options.dart';
import 'package:vritant/login/providers/google_auth_provider.dart';
import 'package:vritant/login/screens/login.dart';
import 'package:vritant/tabs/screens/tabs_screen.dart';
import 'package:vritant/theme/constant.dart';
import 'package:vritant/theme/constant.dart';
import 'package:vritant/theme/constant.dart';
import 'package:vritant/theme/theme.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Vritant());
}


ThemeManager themeManager = ThemeManager();

class Vritant extends StatelessWidget {
  static final ThemeManager themeManager = ThemeManager();

  Vritant({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeManager>(
      create: (_) => themeManager,
      child: Consumer<ThemeManager>(
        builder: (_, themeManager, __) {
          return MaterialApp(
            title: 'Vritant',
            debugShowCheckedModeBanner: false,

            // darkTheme: ThemeData.dark(),
            themeMode: themeManager.currentThemeMode,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}




// Step 6: Implement the SplashScreen widget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          child: FractionallySizedBox(
            alignment: Alignment.center,

            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splashscreen.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )




    );
  }
}
class LandingPage extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  Locale? defaultLanguage;

  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeManager.currentThemeMode,
        title: 'Vritant',
        debugShowCheckedModeBanner: false,
        home: TabsScreen(),
      ),
    );
  }
}
