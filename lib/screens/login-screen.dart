import 'package:curlytailsapp/screens/home-screen.dart';
import 'package:curlytailsapp/screens/main_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/bottom_to_top_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
          Text(
            "Hello Again!",
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xffFF7322),
              height: 62 / 40,
            ),
            textAlign: TextAlign.center,
          ),
          // Text(
          //   "You have beed missed!",
          //   style: const TextStyle(
          //     fontFamily: "Laila",
          //     fontSize: 20,
          //     fontWeight: FontWeight.w400,
          //     color: Color(0xff000000),
          //     height: 62 / 20,
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Enter your mobile number',
                hintText: 'Enter your Number',
              ),
            ),
          ),
          MaterialButton(
            minWidth: 200.0,
            onPressed: () {
              Navigator.of(context).push(PageAnimationTransition(
                  page: const HomeScreen(),
                  pageAnimationType: BottomToTopFadedTransition()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            padding: const EdgeInsets.all(20.0),
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 63, 61, 86),
                    Color.fromARGB(255, 63, 61, 86),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: 200.0,
                    minHeight: 60.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'LOGIN',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Text("Privacy Policy")
        ],
      ),
    );
  }
}
