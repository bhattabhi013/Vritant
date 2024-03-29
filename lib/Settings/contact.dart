import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController queryController = TextEditingController();
  String ilink = 'https://script.google.com/macros/s/AKfycbyETkWH5JZccEVrTgTyJKAtZBR78b6iIvLWtnacp397hlolAMrCrPBKBFSjq7kbeqCW/exec';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.background,title: Text('Contact Us'),),
      body: Container(padding: EdgeInsets.all(10),child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('GET IN TOUCH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Theme.of(context).colorScheme.tertiary),),
        SizedBox(height: 40,),
        Text('Enter Your Name :', style: TextStyle(fontWeight: FontWeight.bold),),
        TextField(controller: nameController,keyboardType: TextInputType.name,),
        SizedBox(height: 20,),
        Text('Enter Email :',style: TextStyle(fontWeight: FontWeight.bold),),
        TextField(controller: emailController,keyboardType: TextInputType.emailAddress,),
        SizedBox(height: 20,),
        Text('Enter your Query :',style: TextStyle(fontWeight: FontWeight.bold),),
        TextField(controller: queryController, keyboardType: TextInputType.text,),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () async {
          DateTime now = DateTime.now();
          String dateinsert = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
          if(nameController.text.isNotEmpty && emailController.text.isNotEmpty && queryController.text.isNotEmpty) {
              String flink = ilink+'?query=${queryController.text.toString()}&email=${emailController.text.toString()}&name=${nameController.text.toString()}&timestamp=$dateinsert';
              var finalURI = Uri.parse(flink);
              var response = await http.get(finalURI);
              if (response.statusCode == 200) {
                print('User query published successfully!');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("User query published successfully!"),
                ));
              }
              else {
                print('User query failed to be published!');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text("User query failed to be published!"),
                ));
              }
          }
          else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Please fill in all fields first!"),
            ));
          }
        }, child: Text('Submit'))
      ],) ,),
    );
  }
}
