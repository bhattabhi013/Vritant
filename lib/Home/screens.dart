import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vritant/ARView/arview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/home';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const title = 'Discover Nursery \n Rhymes \n';
    final mediaquery = MediaQuery.of(context);

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: Container(
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 4 widgets that display their index in the List.
            children: [
              Container(
                color: Colors.blue[100],
                height: mediaquery.size.height * 0.5,
                width: mediaquery.size.width * 0.5,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset('assets/images/lang_icon.png',
                          height: 120, width: 120, fit: BoxFit.fitWidth),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                          child: const Text(
                            "Explore it Live →",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          onPressed: () => _doSome(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[100],
                height: mediaquery.size.height * 0.5,
                width: mediaquery.size.width * 0.5,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset('assets/images/lang_icon.png',
                          height: 120, width: 120, fit: BoxFit.fitWidth),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                          child: const Text(
                            "Explore it Live →",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          onPressed: () => _doSome(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[100],
                height: mediaquery.size.height * 0.5,
                width: mediaquery.size.width * 0.5,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset('assets/images/lang_icon.png',
                          height: 120, width: 120, fit: BoxFit.fitWidth),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                          child: const Text(
                            "Explore it Live →",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          onPressed: () => _doSome(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[100],
                height: mediaquery.size.height * 0.5,
                width: mediaquery.size.width * 0.5,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset('assets/images/lang_icon.png',
                          height: 120, width: 120, fit: BoxFit.fitWidth),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                          child: const Text(
                            "Explore it Live →",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          onPressed: () => _doSome(context),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _doSome(BuildContext context) async {
  print('did');
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LocalAndWebObjectsView()),
  );
}
