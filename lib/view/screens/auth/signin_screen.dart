import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectaar/view/screens/auth/number_screen.dart';
import 'package:nectaar/view_model/navigation/navigation.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/vegets.png",
                  height: 280.h,
                ),
                PositionedDirectional(
                    start: 250.w,
                    top: 10.h,
                    child: Image.asset("assets/nectar_logo.png"))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get your groceries\nwith nectar",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  IntlPhoneField(
                    keyboardType: TextInputType.none,
                    onTap: () {
                      Navigation.push(
                        context,
                        NumberScreen(),
                      );
                    },
                    // onSubmitted: (v) {
                    //   if (v == "0123456789") {
                    //     Navigation.push(
                    //       context,
                    //       NumberScreen(),
                    //     );
                    //   } else {
                    //     Fluttertoast.showToast(
                    //       msg: "Enter from 0 to 9",
                    //     backgroundColor: Colors.red,
                    //       textColor: Colors.white,
                    //
                    //     );
                    //   }
                    // },
                    initialCountryCode: "EG",
                    onChanged: (v) {
                      print(v);
                    },
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    children: [
                      Text(
                        "Or connect with social media",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                        width: double.infinity,
                      ),
                      Container(
                        width: 315.w,
                        height: 50.h,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(
                              0XFF5383EC,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/google.png",
                                height: 23.h,
                              ),
                              Text(
                                "Continue with Google",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: 315.w,
                        height: 50.h,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(
                              0XFF4A66AC,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/facebook.png",
                                height: 25.h,
                              ),
                              Text(
                                "Continue with Facebook",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
