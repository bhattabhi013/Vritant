
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vritant/login/screens/login.dart';
import 'package:vritant/main.dart';
import 'package:vritant/tabs/screens/tabs_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: IntroductionScreen(
      skip: Text('SKIP', style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold, fontSize: 18),),
      next: Text('NEXT', style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold, fontSize: 18),),
      globalBackgroundColor: Colors.black,
      isProgressTap: true,
      isProgress: true,
      pages: [
        PageViewModel(
          title: 'Facilitating Easy and Enjoyable Learning',
              body: 'Create a learning environment that is both accessible and enjoyable for children',
          image: Center(child:Image.asset("assets/images/is1.png",width: 350,),),
          decoration: getDecoration()

        ),
        PageViewModel(
          title: 'Comprehensive Features for Optimal Understanding!',
          body: 'Utilize numerous features that enhance the comprehension of rhymes, ensuring a well-rounded learning experience.',
          image: Center(child:Image.asset("assets/images/is2.png",width: 350,),),
            decoration: getDecoration()
        ),
        PageViewModel(
            title: 'Innovation through Unique Concepts',
            body: 'Stand out by employing innovative ideas, bringing a fresh perspective to the learning process.',
            image: Center(child:Image.asset("assets/images/is3.png",width: 350,),),
            decoration: getDecoration()
        ),
        PageViewModel(
            title: 'Learn Nursery Rhymes in a fun and interactive way!',
            body: 'Start Using Vritant Now!',
            footer: SizedBox(width: MediaQuery.of(context).size.width ,child:Center(child: ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 10, backgroundColor: Colors.deepOrangeAccent)
            ,onPressed: () async{
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('showslider', false);
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LandingPage())); },
            child: Text('Take Off!', style: TextStyle(fontWeight: FontWeight.bold),),
            ),),),
            image: Center(child:Image.asset("assets/images/logo.png",width: 350,),),
            decoration: getDecoration(),

        ),

      ],
      showNextButton: true,
      showSkipButton: true,
      showDoneButton: false,
      freeze: false,
      onDone: () => gotoHome(),
      dotsDecorator: DotsDecorator(

        size: const Size.square(10.0),

        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.deepOrangeAccent,
        color: Colors.deepOrangeAccent,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
        ),
      ),
    ));
  }

  getDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.deepOrangeAccent ),
    bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
    bodyPadding: EdgeInsets.all(10),
    imagePadding: EdgeInsets.all(20),

    titlePadding: EdgeInsets.all(10),
    pageColor: Colors.black
  );

  gotoHome() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LandingPage()));
}

    
    
