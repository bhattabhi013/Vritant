import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vritant/firebase_options.dart';
import 'package:vritant/login/providers/google_auth_provider.dart';
import 'package:vritant/login/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Vritant());
}

class Vritant extends StatelessWidget {
  Vritant({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vritant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
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
        title: 'Vritant',
        home: LoginPage(),
        // routes: {'/routes': (ctx) => TabsScreen()},
      ),
    );
  }
}
