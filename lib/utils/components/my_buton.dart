import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButon extends StatelessWidget {
  final iconImagePath;
  final String buttonText;
  const MyButon({super.key,required this.iconImagePath,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Container(
                      // icon
                      height: 80,
                      padding:const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                       boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          color: Colors.grey.shade400,
                          spreadRadius: 10,
    
                        )
                       ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Image.asset(iconImagePath),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    // text
                    Text(
                      buttonText,
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1)),
                    ),
                  ],
                );
  }
}