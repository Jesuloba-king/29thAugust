import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key, required this.title}) : super(key: key);
  final String title;

  get formKey => null;

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