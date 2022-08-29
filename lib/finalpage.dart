import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  get formKey => null;
  TextEditingController? emailTEC = TextEditingController();
  TextEditingController? phoneN = TextEditingController();
  TextEditingController? userN = TextEditingController();
  TextEditingController? passW = TextEditingController();
  TextEditingController? fullName = TextEditingController();

  getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final getEmail = prefs.getString('Email');
    final getPassword = prefs.getString('password');
    final getUsername = prefs.getString('username');
    final getPhoneNumber = prefs.getString('phone number');
    final getname = prefs.getString('Full name');
    setState(() {
      emailTEC!.text= getEmail!;
      passW!.text = getPassword!;
      userN!.text = getUsername!;
      fullName!.text = getname!;
      phoneN!.text = getPhoneNumber!;

    });
    print(getEmail);
    print(getPassword);
    print(getname);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEmail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(CupertinoIcons.arrow_left, color: Colors.black,),
        ),
      ),
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  //margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          SizedBox(width: 146, height: 66,
                            child: Text("Account Information",
                            style: GoogleFonts.openSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),),
                          Image.asset("assets/images/Rectangle 8.png"),
                          Icon(CupertinoIcons.camera_fill,
                          semanticLabel: "Change",), Text("Change"),

                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 295, height: 54,
                    child: Text("All your account information can be accessed and edited here but your mail will still remain un-edited.",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Form(key: formKey,
                      child: Column(
                          children: <Widget>[

                            //name field
                            const SizedBox(height: 5,),
                            TextFormField(
                              controller: fullName,
                              validator: (String? val){
                                if(val!.isEmpty){
                                  return "name is empty";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: "Name",
                                suffixIcon: Icon(CupertinoIcons.eye),
                              ),
                            ),

                            //username field
                            const SizedBox(height: 10,),
                            TextFormField(
                              controller: userN,
                              validator: (String? val){
                                if(val!.isEmpty){
                                  return "username is empty";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: "Username",
                                suffixIcon: Icon(CupertinoIcons.eye),
                              ),
                            ),

                            //Email field
                            TextFormField(
                              controller: emailTEC,
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

                            //Phone number field
                            const SizedBox(height: 10,),
                            TextFormField(
                              controller: phoneN,
                              validator: (String? val){
                                if(val!.isEmpty){
                                  return "phone number is empty";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: "Phone Number",
                                suffixIcon: Icon(CupertinoIcons.eye),
                              ),
                            ),

                            //Password field
                            const SizedBox(height: 10,),
                            TextFormField(
                              controller: passW,
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

                            //Update button....
                            const SizedBox(height: 20),
                            CupertinoButton.filled(
                              borderRadius: BorderRadius.circular(100),
                              onPressed: () {},
                              child: Text('Update',
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),),
                            ),
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