import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/alerts.dart';
import '../providers/google_auth_provider.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final googleAuth = Provider.of<GoogleSignInProvider>(context);
    final mediaquery = MediaQuery.of(context);
    return Container(
      height: mediaquery.size.height * 1,
      width: mediaquery.size.width * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1.0),
            child: SvgPicture.asset(
              'assets/images/swarabhaas.svg',
              fit: BoxFit.scaleDown,
              width: mediaquery.size.width * 0.5,
              height: mediaquery.size.height * 0.2,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(1.0),
            child: SvgPicture.asset(
              'assets/images/login_icon.svg',
              fit: BoxFit.cover,
              width: mediaquery.size.width * 0.5,
              height: mediaquery.size.height * 0.3,
            ),
          ),
          // TextButton.icon(
          //   icon: Icon(Icons.android),
          //   onPressed: () {
          //     googleSignUp(googleAuth, context);
          //   },
          //   label: const Text('Login with Google'),
          // ),
          InkWell(
            onTap: () {
              googleSignUp(googleAuth, context);
            },
            child: Ink(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: SvgPicture.asset(
                        'assets/images/google_icon.svg',
                        fit: BoxFit.fill,
                        width: mediaquery.size.width * 0.1,
                        height: mediaquery.size.height * 0.04,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text("Google Login"),
                    SizedBox(width: 12),
                    Icon(Icons.arrow_right_alt_rounded),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void googleSignUp(GoogleSignInProvider auth, BuildContext context) {
  auth.googleLogin().then((value) {
    if (value.status) {
      print('true');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertClass(
            title: "Auth Failed",
            message: value.msg,
            alertNum: 1,
          );
        },
      );
    }
  });
}
