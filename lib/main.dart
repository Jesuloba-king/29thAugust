import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Account Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 10,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          const SizedBox(width: 47,),
                          const SizedBox(height: 30,),
                          Text("Create Account",
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
                    Text("Hi, kindly fill in the form to proceed",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Form(key: formKey,
                    child: Column(
                        children: [
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "full name is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "FullName"
                            ),
                          ),

                          //User name filed
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "enter username";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "UserName"
                            ),
                          ),

                          //Phone number field
                          const SizedBox(height: 30,),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (String? val){
                                    if(val!.isEmpty){
                                      return "Nigeria's code";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "+234"
                                  ),
                                ),
                              ),
                              const SizedBox(width: 50,),
                              Expanded(child:
                              TextFormField(
                                validator: (String? val){
                                  if(val!.isEmpty){
                                    return "enter phone number";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    hintText: "Telephone"
                                ),
                              ),),
                              const SizedBox(width: 27,),
                            ],
                          ),

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

                          //Date of birth and Gender field....
                          const SizedBox(height: 30,),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (String? val){
                                    if(val!.isEmpty){
                                      return "enter Date of Birth";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "Date of Birth"
                                  ),
                                ),
                              ),
                              const SizedBox(width: 44,),
                              Expanded(child: TextFormField(
                                validator: (String? val){
                                  if(val!.isEmpty){
                                    return "Gender is empty";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    hintText: "Gender"
                                ),
                              ),),
                              const SizedBox(width: 97,),
                            ],
                          ),

                          //Relationship Status field....
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "Relationship Status is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Relationship Status"
                            ),
                          ),

                          //Interest field
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "enter interest";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Interest"
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
                              suffixIcon: Icon(CupertinoIcons.eye,),
                            ),
                          ),

                          //Confirm password field
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "please confirm password";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: "Confirm Password",
                              suffixIcon: Icon(CupertinoIcons.eye,),
                            ),
                          ),

                          //Create Account Button....
                          const SizedBox(height: 30),
                          CupertinoButton.filled(
                            borderRadius: BorderRadius.circular(100),
                            disabledColor: CupertinoColors.activeOrange,
                            onPressed: () async {
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              prefs.setStringList('Details',
                                  <String> ['Email', 'useremail@gmail.com', 'Phone Number','Password',] );
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const LoginPage(title: "Login");
                            }));},
                            child: Text('Create Account',
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),),
                          ),
                          const SizedBox(height: 16),
                          Text("Already have an account?",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),),
                          // const SizedBox(height: 30,),
                          CupertinoButton.filled(
                            borderRadius: BorderRadius.circular(100),
                            onPressed: () async {
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setStringList('Details',
                                <String> ['Email', 'useremail@gmail.com', 'Phone Number','Password',] );
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const LoginPage(title: "Login");
                            }));},
                            child: Text("Login",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),),
                          ),
                        ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
