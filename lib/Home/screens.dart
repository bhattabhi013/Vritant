import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
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

    return Scaffold(
        body: GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 4 widgets that display their index in the List.
      children: const [
        GifCard(
            gifAddress: 'assets/duck.gif',
            poem:
                "One little duck went swimming one day \n Over the hill and far away \n Mother duck said, Quack quack quack quack \n And all her five little ducks came back!",
            uri:
                "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF-Binary/Duck.glb"),
        GifCard(
            gifAddress: 'assets/sun.gif',
            poem:
                "Moon! Sun! Shiny and silver, \n Moon! Sun! Shiny and gold. \n Moon! Sun! Shine on the young ones, \n Shine until they grow old. Shine, shine, shine, shine,",
            uri:
                "https://github.com/bhattabhi013/ar_Demo/raw/master/assets/Sun_1_1391000.glb"),
        GifCard(
            gifAddress: 'assets/bus.gif',
            poem:
                "The wheels on the bus go round and round \n Round and round. \n Round and round. \n The wheels on the bus go round and round, \n All through the town! ",
            uri:
                "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/CesiumMilkTruck/glTF-Binary/CesiumMilkTruck.glb"),
        GifCard(
            gifAddress: 'assets/star.gif',
            poem:
                "This is the house that Jack built. \n This is the malt that lay in the house that Jack built. \n This is the rat that ate the malt. \n That lay in the house that Jack built. \n This is the cat \n That killed the rat that ate the malt.",
            uri:
                "https://github.com/bhattabhi013/ar_Demo/blob/master/assets/uploads_files_3979943_Low+Poly+House+c.glb?raw=true"),
        GifCard(
            gifAddress: 'assets/christmas.gif',
            poem:
                "This is the house that Jack built. \n This is the malt that lay in the house that Jack built. \n This is the rat that ate the malt. \n That lay in the house that Jack built. \n This is the cat \n That killed the rat that ate the malt.",
            uri:
                "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Lantern/glTF-Binary/Lantern.glb"),
        GifCard(gifAddress: 'assets/spider.gif', poem: "", uri: ""),
        GifCard(gifAddress: 'assets/baby.gif', poem: "", uri: ""),
        GifCard(gifAddress: 'assets/animal.gif', poem: "", uri: "")
      ],
    ));
  }
}

// Function to display the alert
Future<void> _showAlert(BuildContext context, String msg, String uri) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert'),
        content: Text(
            'Children should use this product with adult supervision \nBe aware of your surroundings'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _doSome(context, msg, uri);
            },
            child: Text('YES'),
          ),
        ],
      );
    },
  );
}

void _doSome(BuildContext context, String msg, String uri) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LocalAndWebObjectsView(msg: msg, imgUrl: uri),
    ),
  );
}

class GifCard extends StatelessWidget {
  final String gifAddress;
  final String poem;
  final String uri;

  const GifCard(
      {super.key,
      required this.gifAddress,
      required this.poem,
      required this.uri});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 5,
            blurRadius: 17,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      height: mediaquery.size.height * 0.5,
      width: mediaquery.size.width * 0.5,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(gifAddress,
                height: 100, width: 100, fit: BoxFit.fitWidth),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.secondary)),
                child: Text(
                  "Explore  Live →",
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                onPressed: () => _showAlert(context, poem, uri),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
