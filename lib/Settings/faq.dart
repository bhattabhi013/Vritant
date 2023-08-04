import 'package:flutter/material.dart';
import 'package:simple_accordion/simple_accordion.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAQ Section'),
        backgroundColor: Theme.of(context).colorScheme.background,),
      body: SimpleAccordion(
        children: [
          AccordionHeaderItem(
            title: "How to contact us?",
            children: [
              AccordionItem(title: "Answer", child: Text('If you need to contact us, go to the "Settings" screen and tap on the "Contact Us" option. Fill in the required details and send us a message.', textAlign: TextAlign.center,),),
            ],
          ),
          AccordionHeaderItem(
            title: "How to see 3-d models in poems?",
            children: [
              AccordionItem(title: "Answer", child: Text('Once you click on a particular card of a poem from the home menu, it shows up a new screen, where if proper permissions be given, the model shows up in the camera as a 3-d object.', textAlign: TextAlign.center,),),
            ],
          ),
          AccordionHeaderItem(
            title: "What is the playground section?",
            children: [
              AccordionItem(title: "Answer", child: Text('The playground section is an AR-supported screen where the user can create as many 3-d models as they want and play with them. This would help them in their learning process.', textAlign: TextAlign.center,),),
            ],
          ),
          AccordionHeaderItem(
            title: "How to use the playground?",
            children: [
              AccordionItem(title: "Answer", child: const Text('In the playground screen, tapping the relevant options adds a 3-d model to the AR view supported by your camera. Then, using your fingertips, you can move the object anywhere within your camera\'s reach. A user can add as many objects as they want.', textAlign: TextAlign.center,),),
            ],
          ),
          AccordionHeaderItem(
            title: "How to listen to a poem?",
            children: [
              AccordionItem(title: "Answer", child: const Text('Once you start a poem by clicking relevant card, the poem gets displayed on the screen. CLicking on the "listen" button below ', textAlign: TextAlign.center,),),
            ],
          ),
          AccordionHeaderItem(
            title: "How to manipulate 3-d models?",
            children: [
              AccordionItem(title: "Answer", child: const Text('Users can create multiple perspectives of the 3-D models, allowing them to rotate and interact with the models according to their preferences.', textAlign: TextAlign.center,),),
            ],
          ),
        ],

      ),
    );
  }
}

