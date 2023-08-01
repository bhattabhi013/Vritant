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
      appBar: AppBar(title: const Text('Licenses',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,foregroundColor: Colors.black,),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/licenses.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              data = json.decode(snapshot.data.toString());
              return ListView.builder(scrollDirection: Axis.horizontal, shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Flexible(child:Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 32, bottom: 32, left: 16, right: 16),
                child: SingleChildScrollView(child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Text(
                            data[index]['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text('Version :'+
                          data[index]['version'],
                          style: TextStyle(color: Colors.black,
                        ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          data[index]['license'],
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
          },
          itemCount: data.length,
        );
    }
    )));
  }
}
