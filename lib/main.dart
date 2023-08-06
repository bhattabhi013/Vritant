import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:provider/provider.dart';
import 'package:vritant/IntroSlider/introslider.dart';
import 'package:vritant/firebase_options.dart';
import 'package:vritant/login/providers/google_auth_provider.dart';
import 'package:vritant/login/screens/login.dart';
import 'package:vritant/tabs/provider/ThemeProvider.dart';
import 'package:vritant/tabs/screens/tabs_screen.dart';
import 'package:vritant/themes/dark.dart';
import 'package:vritant/themes/light.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider( // create the provider
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      )
    ],
    child: const Vritant(),
  ),);
}

class Vritant extends StatefulWidget {
  const Vritant({super.key});

  @override
  State<Vritant> createState() => _VritantState();
}

class _VritantState extends State<Vritant> {
  bool isFirstRun = false;

  Future<void> isfirstrun() async {
    isFirstRun = await IsFirstRun.isFirstRun();
  }

  @override
  void initState() {
    // TODO: implement initState
    isfirstrun();
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vritant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isFirstRun?OnBoardingPage():LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  Locale? defaultLanguage;

  LandingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final appLocalization = AppLocalizations.of(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
      ],
      child: MaterialApp(
        theme: Provider.of<ThemeProvider>(context).currentTheme,

        title: 'Vritant',
        debugShowCheckedModeBanner: false,
        // home: LoginPage(),   // enable google sign-in
        home: TabsScreen(),
        // routes: {'/routes': (ctx) => TabsScreen()},
      ),
    );
  }
}
