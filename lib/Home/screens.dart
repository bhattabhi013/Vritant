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

    return Scaffold(
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
                  Image.asset('assets/duck.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(
                          context,
                          "One little duck went swimming one day Over the hill and far away Mother duck said, Quack quack quack quack And all her five little ducks came back!",
                          "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF-Binary/Duck.glb"),
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
                  Image.asset('assets/sun.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(
                        context,
                        "Moon! Sun! Shiny and silver, Moon! Sun! Shiny and gold. Moon! Sun! Shine on the young ones, Shine until they grow old. Shine, shine, shine, shine,",
                        "https://github.com/bhattabhi013/ar_Demo/raw/master/assets/Sun_1_1391000.glb",
                      ),
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
                  Image.asset('assets/bus.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(
                          context,
                          "The wheels on the bus go round and round Round and round. Round and round. The wheels on the bus go round and round, All through the town! ",
                          "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/CesiumMilkTruck/glTF-Binary/CesiumMilkTruck.glb"),
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
                  Image.asset('assets/star.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(
                          context,
                          "This is the house that Jack built. This is the malt that lay in the house that Jack built. This is the rat that ate the malt. That lay in the house that Jack built. This is the cat That killed the rat that ate the malt.",
                          "https://github.com/bhattabhi013/ar_Demo/blob/master/assets/uploads_files_3979943_Low+Poly+House+c.glb?raw=true"),
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
                  Image.asset('assets/christmas.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(
                          context,
                          "This is the house that Jack built. This is the malt that lay in the house that Jack built. This is the rat that ate the malt. That lay in the house that Jack built. This is the cat That killed the rat that ate the malt.",
                          "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Lantern/glTF-Binary/Lantern.glb"),
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
                  Image.asset('assets/spider.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(context, "", ""),
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
                  Image.asset('assets/baby.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(context, "", ""),
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
                  Image.asset('assets/animal.gif',
                      height: 120, width: 120, fit: BoxFit.fitWidth),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      child: const Text(
                        "Explore  Live →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () => _doSome(context, "", ""),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

void _doSome(BuildContext context, String msg, String uri) async {
  print('did');
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LocalAndWebObjectsView(msg: msg, imgUrl: uri),
    ),
  );
}
