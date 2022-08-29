import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'finalpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  get formKey => null;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
      color: Colors.white,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 120),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    //margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 10,)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            const SizedBox(width: 47,),
                            const SizedBox(height: 30,),
                            Text("Welcome Back!",
                              style: GoogleFonts.openSans(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 47,),
                      Text("Hi, Kindly login to continue celebration",
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 99,),
                  Container(
                    margin: const EdgeInsets.all(10),
                      child: Form(key: formKey,
                        child: Column(
                            children: <Widget>[
                              //Email field....
                              const SizedBox(height: 30,),
                              TextFormField(
                                validator: (String? val){
                                  if(val!.isEmpty){
                                    return "email is empty";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    hintText: "Email"
                                ),
                              ),

                              //Password field
                              const SizedBox(height: 30,),
                              TextFormField(
                                validator: (String? val){
                                  if(val!.isEmpty){
                                    return "password is empty";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: Icon(CupertinoIcons.eye),
                                ),
                              ),

                              //Let's Celebrate button....
                              const SizedBox(height: 30),
                              CupertinoButton.filled(
                                borderRadius: BorderRadius.circular(100),
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const FinalPage(title: "Account info");
                                }));},
                                child: Text('Let\'s Celebrate',
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),),
                              ),
                              const SizedBox(height: 16),
                              Text("Don’t have an account?",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),),
                              Text("Create Account",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.yellowAccent,
                                ),),
                            ]
                        ),
                      )
                  ),
                ],
              ),
          ),
        ),
      ),
  );
  }
}