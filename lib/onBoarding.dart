import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            child:
            Column(children: [
              Text("Karyana",style: GoogleFonts.kronaOne(
                fontWeight: FontWeight.w400,
                fontSize: 28.4,
                color: Color(0xffFF5934),
              ),),
              Text("Retailer App",style: GoogleFonts.inter(
                fontSize: 11.11,
                fontWeight: FontWeight.w500,
                color: Color(0xff121212),
              ),),
          ],)

          ),

          Container(
            color: Color(0xffFFFFFF),
              child:
                  Column(children: [
                    Text("Welcome to Karyana!"),
                    ListTile(
                      leading: Image.asset("assets/images/first.png"),
                      title: Text("We make shopping for your business easier than ever before"),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/second.png"),
                      title: Text("Our app offers extensive product listings"),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/first.png"),
                      title: Text("Our ordering system is user-friendly"),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/first.png"),
                      title: Text("Find everything you need to keep your business running smoothly"),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/first.png"),
                      title: Text("Start shopping now and experience the convenience!"),
                    ),
                    SizedBox(
                      width: 335,height: 56,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFF5934),
                              foregroundColor: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child: Text("Create Account")),
                    ),
                    SizedBox(
                      width: 335,height: 56,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),

                              )
                          ),
                          child: Column(children: [
                            Text("Have an account?",style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xffBDBDBD)
                            ),),
                            Text("Login",style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xffFF5934)
                            ),)
                          ],)),
                    ),
                  ],)
              ),

        ],),
      ),
    );
  }
}
