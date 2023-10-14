import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/start-illustration.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Curlietails",
              style: const TextStyle(
// fontFamily: "Laila",
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                height: 62 / 40,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Your Pet deserves Luxury",
              style: const TextStyle(
                fontFamily: "Laila",
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                height: 37 / 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "By Login you agree to our terms and conditions.",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                height: 19 / 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.all(0), // Adjust padding as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust border radius as needed
                    ),
                    primary: Colors.white, // Background color
                  ),
                  child: Container(
                    width: 157,
                    height: 69,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      // Match border radius

                      color: Colors.white, // Border color
                    ),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.all(0), // Adjust padding as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust border radius as needed
                    ),
                    primary: Colors.white, // Background color
                  ),
                  child: Container(
                    width: 157,
                    height: 69,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      // Match border radius

                      color: Color(0xff3F3D56), // Border color
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
