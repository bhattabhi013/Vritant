import 'package:flutter/material.dart';
import 'dart:convert';

class LicensesScreen extends StatefulWidget {
  const LicensesScreen({Key? key}) : super(key: key);

  @override
  State<LicensesScreen> createState() => _LicensesScreenState();
}

class _LicensesScreenState extends State<LicensesScreen> {

  late List data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Licenses',style: TextStyle(fontWeight: FontWeight.bold,),),backgroundColor: Theme.of(context).colorScheme.background,foregroundColor: Colors.black,),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/licenses.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              data = json.decode(snapshot.data.toString());
              return ListView.builder(scrollDirection: Axis.vertical, shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Flexible(child:GestureDetector(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Showlicence(name: data[index]['name'], license: data[index]['license'], version: data[index]['version'])));
            },child:Card(

              child: Padding(
                padding: const EdgeInsets.only(
                    top: 32, bottom: 32, left: 16, right: 16,),
                child: SingleChildScrollView(child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            data[index]['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),

                        const SizedBox(height: 10,),
                        Text('Version :'+
                          data[index]['version'],
                          style: TextStyle(color: Colors.black,
                        ),
                        ),
                        SizedBox(height: 10),

                      ],
                    ),
                  ],
                ),
              ),
            ))));
          },
          itemCount: data.length,
        );
    }
    )));
  }

}

class Showlicence extends StatefulWidget {
  final String name;
  final String license;
  final String version;
  const Showlicence({Key? key, required this.name, required this.license, required this.version}) : super(key: key);

  @override
  State<Showlicence> createState() => _ShowlicenceState();
}

class _ShowlicenceState extends State<Showlicence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name),),
      body: SingleChildScrollView(child: Container(padding: EdgeInsets.all(10),width: MediaQuery.of(context).size.width,child: Column(
        children: [
          SizedBox(height: 30,),
          Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 20,),
          Text(widget.version, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text(widget.license),
        ],
      ),),
    ));
  }
}

