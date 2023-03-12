import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

Homeprovider? providerF;
Homeprovider? providerT;

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of(context, listen: false);
    providerT = Provider.of(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          // leading: Icon(Icons.login_outlined, color: Colors.white, size: 30),
          title: Text(
            "Stepper App",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Stepper(
          steps: [
            Step(
              title: Text(
                "SignUp",
                style: GoogleFonts.aBeeZee(
                    letterSpacing: 1, color: Colors.grey.shade700),
              ),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Full Name*",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.person_outline,
                          color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade700, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Email id",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.mail_outline_rounded,
                          color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade700, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.none,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Password*",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.lock_outlined,
                          color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade700, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.none,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Conform Password*",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.lock_outlined,
                          color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade700, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Login",
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.none,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Email id*",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.mail_outline_rounded,
                          color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade700, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.none,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Password*",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.lock_outlined,
                          color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade700, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.grey.shade700),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Your Login \n   success  \n        🎉",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
          currentStep: providerF!.i,
          onStepContinue: () => providerF!.continu_step(),
          onStepCancel: () => providerF!.back_step(),
        ),
      ),
    );
  }
}
