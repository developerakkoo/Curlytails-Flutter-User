import 'package:flutter/material.dart';
import 'package:animated_gradient/animated_gradient.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Center(
                  child: Text(
                "Welcome User!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              )),
            ),
            const Card(
              child: ListTile(
                enableFeedback: true,
                title: Text("Orders"),
                subtitle: Text("Check your order status."),
                trailing: Icon(Icons.shopping_bag_outlined),
              ),
            ),
            const Card(
              child: ListTile(
                enableFeedback: true,
                title: Text("Address"),
                subtitle: Text("Add/Remove Address."),
                trailing: Icon(Icons.home_work_outlined),
              ),
            ),
            const Card(
              child: ListTile(
                enableFeedback: true,
                title: Text("Invite"),
                subtitle: Text("Send Invite Link to Friends."),
                trailing: Icon(Icons.share_outlined),
              ),
            ),
            const Card(
              child: ListTile(
                enableFeedback: true,
                title: Text("Contact Us"),
                subtitle: Text("Connect with us for any query."),
                trailing: Icon(Icons.contact_mail_outlined),
              ),
            ),
            const Card(
              child: ListTile(
                enableFeedback: true,
                title: Text("Logout"),
                subtitle: Text("Logout of account."),
                trailing: Icon(Icons.logout_outlined),
              ),
            )
          ],
        ),
      )),
    );
  }
}
